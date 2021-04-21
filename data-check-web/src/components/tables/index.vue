<template>
    <div>
      <div>
<!--        <router-link to="/">-->
<!--          <el-button type="text" >首页</el-button>-->
<!--        </router-link>-->
        <el-row>
          <el-col :span="10">
            <el-input
              size="small"
              placeholder="请输入表名"
              v-model="iptTableName">
              <i slot="prefix" class="el-input__icon el-icon-search"></i>
            </el-input>
          </el-col>
          <el-col :span="2">
            <span>&nbsp;</span>
            <el-button type="primary" @click="search" size="small">搜 索</el-button>
          </el-col>
          <el-col :span="2">
            <el-button type="primary" @click="flush"  size="small">刷 新</el-button>
          </el-col>
        </el-row>

        <el-table
          :data="page.data"
          style="width: 100%">
          <el-table-column
            prop="tableName"
            label="表名"
            width="180">
          </el-table-column>
          <el-table-column
            label="数量"
            width="180">
            <template slot-scope="scope">
              <span>{{scope.row.count}}</span>
              <el-button @click="loadCount(scope.row)" type="text" size="small">加载</el-button>
            </template>
          </el-table-column>
          <el-table-column
            label="操作"
            width="180">
            <template slot-scope="scope">
              <el-button @click="details(scope.row)" type="text" size="small">详情</el-button>
<!--              <el-button type="text" size="small">编辑</el-button>-->
            </template>
          </el-table-column>
        </el-table>
        <div>
          <el-pagination
            layout="prev, pager, next"
            :page-size="page.currentCount"
            :total = "page.totalCount"
            :current-page="page.currentPage"
            @current-change="pageChange">
          </el-pagination>
        </div>
      </div>

      <!-- 元数据 -->
      <el-dialog
        title="元数据信息"
        :visible.sync="metadataDetail"
        width="90%"
        >
        <el-button type="primary" @click="valiTable"> 全表校验 </el-button>
        <el-table
          :data="this.metadataList"
          style="width: 100%">
          <el-table-column
            prop="fieldName"
            label="字段名称"
            width="180">
          </el-table-column>
          <el-table-column
            prop="fieldTypeName"
            label="字段类型"
            width="180">
          </el-table-column>
          <el-table-column
            prop="columnSize"
            label="字段长度"
            width="180">
          </el-table-column>
          <el-table-column
            prop="fieldComment"
            label="描述"
            width="180">
          </el-table-column>
          <el-table-column
            prop="fileRules"
            label="校验规则"
            width="180">
            <template slot-scope="scope">
              <el-button type="text" @click="ruleDialog(scope.row)">添加规则</el-button>
            </template>
          </el-table-column>
          <el-table-column label="校验">
            <template slot-scope="scope">
              <el-button type="text" @click="validate(scope.row)">校验</el-button>
            </template>
          </el-table-column>
        </el-table>
        <span slot="footer" class="dialog-footer">
    <el-button @click="metadataDetail = false">取 消</el-button>
    <el-button type="primary" @click="metadataDetail = false">确 定</el-button>
      </span>
        <!-- 添加规则dialog -->
        <el-dialog
          width="50%"
          title="添加规则"
          :visible.sync="innerVisible"
          append-to-body>
          <el-select
            v-model="selectedRules"
            multiple
            collapse-tags
            style="margin-left: 20px;"
            filterable
            placeholder="请选择">
            <el-option
              v-for="item in rules"
              :key="item.code"
              :label="item.description"
              :value="item.code">
            </el-option>
          </el-select>
          <span slot="footer" class="dialog-footer">
      <el-button @click="innerVisible = false">取 消</el-button>
<!--      <el-button type="primary" @click="innerVisible = false">确 定</el-button>-->
      <el-button type="primary" @click="addFieldRules()">确 定</el-button>
        </span>
        </el-dialog>
        <!-- 字段级校验结果dialog-->
        <el-dialog width="50%"
                   title="添加规则"
                   :visible.sync="valiResDialog"
                   append-to-body>
          <el-table
            :data="this.valiResList"
            style="width: 100%">
            <el-table-column
              prop="description"
              label="规则名称"
            >
            </el-table-column>
            <el-table-column
              prop="isPass"
              label="是否通过"
            >
            </el-table-column>
          </el-table>
        </el-dialog>

        <!-- 表级校验结果 dialog -->
        <el-dialog width="50%"
                   title="校验结果"
                   :visible.sync="valiTableResDialog"
                   append-to-body>
<!--          库：{{this.valiTableRes[0].dbName}}-->
          表：{{this.tableName}}
          <template v-for="item in valiTableRes">

            <h4>

              字段：{{item.fieldName}}
            </h4>
            <el-table  :data="item.pl"
                       style="width: 100%">
              <el-table-column
                prop="description"
                label="规则名称"
              >

              </el-table-column >
              <el-table-column
                prop="isPass"
                label="是否通过">
              </el-table-column>
            </el-table>

          </template>

        </el-dialog>
      </el-dialog>
    </div>
</template>

<script>


    import axios from "axios";

    export default {
      name: "tables",
      // props: {
      //   dbId:{
      //     type: Number,
      //   }
      // },

      data () {
          return {
            valiTableResDialog:false,
            valiTableRes: [],
            iptTableName:undefined,
            innerVisible:false,
            tableName: undefined,
            dbId:1,
            fieldName:undefined,
            // 元数据弹出框
            metadataDetail: undefined,
            //校验结果弹出框
            valiResDialog:false,
            metadataList: [],
            valiResList: [],
            page: {
              // 当前页
              currentPage: 1,
              // 总条数
              totalCount: undefined,
              // 总页数
              totalPage: undefined,
              // 每页显示的数据
              data: [],
              // 当前页显示的条数
              currentCount: 7
            },
            rules: [],
            selectedRules: []

          }
      },
      mounted() {
        this.getRules()
      },
      methods: {
        valiTable() {
          console.log(this.dbId,this.tableName)
          const url = "/validate/table?dbId=" + this.dbId + "&tableName=" + this.tableName
          this.$axios.get(url).then(x => {
            console.log(x.data.data)
            this.valiTableRes = x.data.data
            this.valiTableResDialog = true;
          })
        },
        search () {
          const url = '/db-table/tableList?dbId='+ this.dbId +"&tableName=" + this.iptTableName
            + "&currentPage=" + this.page.currentPage
            + "&currentCount=" + this.page.currentCount
          this.$axios.get(url).then(x=>{
            this.page = x.data.data
          })
        },
        validate (data) {
          console.log(data)
          const codes = this.assCode(this.selectedRules)
          console.log(codes)
          const wbFieldRule = {
            "dbId": data.dbId,
            "tableName": data.tableName,
            "fieldName":data.fieldName
          }
          const url = '/validate/field'
          this.$axios.post(url,wbFieldRule).then(x=>{
            const msg = x.data.msg
            this.valiResList = x.data.data
            console.log(x.data.data)
            this.valiResDialog = true
          })
        },
        ruleDialog(data) {
          this.innerVisible = true
          this.tableName = data.tableName
          this.fieldName = data.fieldName

        },
        // code数组转字符串
        assCode(data) {
          let codes = ''
          for (let i = 0; i < data.length; i++) {
            if (i< data.length-1) {
              codes = codes + this.selectedRules[i] + ','
            }else {
              codes = codes + this.selectedRules[i]
            }
          }
          return codes
        },
        addFieldRules() {
          const url = '/fieldrules/add'
          const code = this.assCode(this.selectedRules)
          console.log(code)
          const data = {
            "dbId": this.dbId,
            "tableName":this.tableName,
            "fieldName": this.fieldName,
            "code": code
          }
          this.$axios.post(url,data).then(x => {
            this.$message({
              message: "成功", type: "success"
            })
            this.innerVisible = false
          })
        },
        // 获取规则
        getRules() {
          const url = '/wb-rule/list'
          this.$axios.get(url).then(x => {
            this.rules = x.data.data
          })
        },
        details(data) {
          const url = "/metadata/get?dbId=" + this.dbId + "&tableName=" + data.tableName
          this.tableName = data.tableName
          axios.get(url).then(x => {
            this.metadataList = x.data.data
          })
          this.metadataDetail = true
        },
        // 统计表总条数
        loadCount (data) {
          const tableName = data.tableName

          const url = "/db-table/count?dbId="
            +this.dbId + "&tableName=" + tableName
          this.$axios.get(url).then(x => {
            for (let i = 0; i < this.page.data.length; i++) {
              if (tableName === this.page.data[i].tableName){
                this.page.data[i].count = x.data.data
                break
              }
            }
          })
        },
        //根据资源id，查出该资源下所有表
        pageList (dbId,type) {
          if (type === 1) {this.page.currentPage = 1}
          this.dbId = dbId
          let url = "/db-table/tableList?dbId=" + this.dbId
            + "&currentPage=" + this.page.currentPage
            + "&currentCount=" + this.page.currentCount
          this.$axios.get(url).then(x => {
            this.page = x.data.data
          })
        },
        // 页面变化
        pageChange(currentPage) {
          // 如果tablename不为空就走搜索
          if(this.iptTableName !== undefined) {
            this.page.currentPage = currentPage
            this.search()
          } else {
            this.page.currentPage = currentPage
            this.pageList(this.dbId,0)
          }

        },
        // 刷新
        flush () {
          this.pageList(this.dbId,2)
        }
      }
    }
</script>

<style scoped>

</style>
