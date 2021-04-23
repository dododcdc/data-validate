<template>
    <div>
<!--      <el-button @click="toDtList" class="btn btn-success">查看数据源</el-button>-->
        <div style="width:70%;margin:0 auto;" >
         <div style="margin-top:50px;"></div>
        <el-form :model="datasource" class="formsource" label-width="120px">
            <el-row>
                <el-col :span="10">
                    <el-form-item label="地址">
                        <el-input v-model="datasource.url" placeholder="jdbc:hive2://hiveaddress:10000/db1"></el-input>
                    </el-form-item>
                </el-col>
            </el-row>
            <el-row>
                <el-col :span="10">
                    <el-form-item label="用户名">
                        <el-input v-model="datasource.username" placeholder="root"></el-input>
                    </el-form-item>
                </el-col>
            </el-row>
            <el-row>
                <el-col :span="10">
                    <el-form-item label="密码">
                        <el-input v-model="datasource.password" placeholder="1111"></el-input>
                    </el-form-item>
                </el-col>
            </el-row>

            <el-row>
                <el-col :span="10">
                    <el-form-item label="driver">
                        <el-input v-model="datasource.driver" placeholder="org.apache.hive.jdbc.HiveDriver"></el-input>
                    </el-form-item>
                </el-col>
            </el-row>
            <el-row>
                <el-col :span="10">
                    <el-form-item label="库名">
                        <el-input v-model="datasource.dbName" placeholder="db1"></el-input>
                    </el-form-item>
                </el-col>
            </el-row>
            <el-row>
                <el-col :span="10">
                    <el-form-item label="数据源类型">
                          <el-select v-model="datasource.sourceType" placeholder="请选择">
                            <el-option
                            v-for="item in options"
                            :key="item.value"
                            :label="item.label"
                            :value="item.value">
                            </el-option>
                        </el-select>
                    </el-form-item>
                </el-col>
            </el-row>

            <el-row>
              <el-col :span="10">

              <el-form-item label="">
                <el-button style="width:100%" @click="addSource">添 加</el-button>
              </el-form-item>
              </el-col>
            </el-row>
        </el-form>
        </div>
    </div>
</template>

<script>
import {add} from '@/http/datasource/datasource.js'
export default {
    data () {
        return {
            datasource: {
                url: undefined,
                username:undefined,
                password:undefined,
                driver: undefined,
                sourceType: undefined,
                dbName: undefined
            },
            options: [{
          value: '0',
          label: 'mysql'
        }, {
          value: '1',
          label: 'impala'
        }, {
          value: '2',
          label: 'hive'
        }, {
          value: '3',
          label: 'orcle'
        }]
      }
        },

    methods: {
        addSource () {
            // 添加数据源
            add(this.datasource)
        }
    }
    }

</script>

<style scoped>

</style>
