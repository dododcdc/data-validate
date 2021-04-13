<template>
  <div>
    <h1>Welcome</h1>
    <el-button @click="toDatasource" class="btn btn-success">添加数据源</el-button>
    <el-button @click="toDatabaseList" class="btn btn-success">查看数据源</el-button>
    <el-button @click="toValidata">校验配置</el-button>
  </div>

</template>

<script>
  export default {
    data() {
      return {}

    },
    mounted() {

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
<style scoped>

</style>
