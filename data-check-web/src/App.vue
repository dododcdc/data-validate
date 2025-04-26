<template>
  <div id="app" >
    <el-row style="background:#0061ae">
      <el-col :span="1"><h1></h1></el-col>
      <el-col :span="10">
        <div>
          <img src="./resource/img/logo.png">
        </div>

      </el-col>
      <el-col :span="2">
        <el-button @click="toDatasource" type="text" style="color: white">添加数据源</el-button>
      </el-col>
      <el-col :span="2">
        <el-button @click="toDatabaseList" type="text" style="color: white">查看数据源</el-button>
      </el-col>

      <el-col :span="2">
        <el-button @click="toValidata" type="text" style="color: white">校验配置</el-button>
      </el-col>
    </el-row>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App',
  data () {
    return {
    }
  },
  methods: {
    toDatasource() {
      this.$router.replace('/datasource')
    },
    toDatabaseList() {
      this.$router.replace("/Database")
    },
    toValidata() {
      this.$router.replace("/Rule")
    }
  }
}
</script>

<style>
/* #app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: left;
  color: #2c3e50;
  margin-top: 0px;
} */

</style>
