<template>
    <div>
<!--      <router-link to="/">-->
<!--        <el-button type="text">首页</el-button>-->
<!--      </router-link>-->
      <h1>
        校验规则配置
      </h1>
      <h4>
        目前只支持单个字段的校验
      </h4>


      <el-table
        :data="rules"
        style="width: 100%">
        <el-table-column
          type="index"
          width="50">
        </el-table-column>
        <el-table-column
          prop="validateSql"
          label="规则模板"
          width="300">
        </el-table-column>
        <el-table-column
          prop="description"
          label="描述"
          width="180">
        </el-table-column>
        <el-table-column
          label="操作"
          width="180">
          <template slot-scope="scope">
            <el-button  type="text" size="small">编辑</el-button>
            <!--              <el-button type="text" size="small">编辑</el-button>-->
          </template>
        </el-table-column>
      </el-table>
    </div>
</template>

<script>
    export default {
      name: "rule",
      data () {
        return {
          rules:[]
        }
      },
      mounted() {
        this.getRules()
      },
      methods: {
        getRules() {
          const url = '/wb-rule/list'
          this.$axios.get(url).then(x => {
            this.rules = x.data.data;
          })
        }
      }

    }
</script>

<style scoped>

</style>
