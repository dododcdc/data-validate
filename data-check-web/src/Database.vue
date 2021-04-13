<template>
  <div>
    <el-container>
      <el-container>
        <el-aside :width="isCollapse ? '46px' : '300px'">
          <div class="toggle-button" @click="togleCollapse">|||</div>
          <el-menu collapse-transition default-active="2"
                   class="el-menu-vertical-demo"
                   :collapse="isCollapse"
                   @open="handleOpen"
                   @close="handleClose">

           <template v-for="item in menuList">
             <el-menu-item :key="item.id" :index="'/'+item.dbName" @click="flushTables(item.id)" >
<!--               <el-menu-item :key="item.id" index="/tables">-->
               <i class="el-icon-coin"></i>
               {{item.dbName}}
             </el-menu-item>
           </template>

          </el-menu>
        </el-aside>
        <el-main>
<!--          <router-view />-->
          <tables ref="tables" ></tables>
        </el-main>
      </el-container>
    </el-container>


  </div>
</template>
<script>
  import tables from '@/components/tables/index.vue'
  export default {

    name:'Database',
    components: { tables },
    data(){
      return{
        dbId:1,
        isCollapse: false,
        menuList : [
          // {
          //   "id": "1",     //菜单项所对应的路由路径
          //   "dbName": "功能1"     //菜单项名称
          // },
          // {
          //   "id": "2",
          //   "dbName": "功能2"
          // }

        ]
      }
    },
    mounted() {
      this.list()
      console.log("==========")
      // this.flushTables(this.dbId)
    },
    methods: {

      // 查询所有库
      list () {
        this.$axios.get("/db/list").then(x => {
          this.menuList = x.data.data
        })
      },
      flushTables (dbId) {
        this.$refs.tables.pageList(dbId,1)
        this.dbId = dbId
      },
      // 菜单的折叠与展开
      togleCollapse () {
        this.isCollapse = !this.isCollapse
      },
      handleOpen(key, keyPath) {
        console.log(key, keyPath);
      },
      handleClose(key, keyPath) {
        console.log(key, keyPath);
      }
    }

  }
</script>
<style  scroped>
.toggle-button {
  background-color: #4A5064;
  font-size: 10px;
  line-height: 24px;
  color: #fff;
  text-align: center;
  letter-spacing: 0.2em;
}

</style>
