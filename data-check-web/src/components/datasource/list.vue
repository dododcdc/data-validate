<template>
    <div>
        <h1>数据源展示</h1>
      <template v-for="(item,index) in list">
        　　　 <!-- 标题标题 -->
        <template v-if="item.children.length">
          <el-submenu :key="index" :index="item.index">
            <template :index="item.index" slot="title">
              <i :class="item.icon"></i>
              <span>{{item.name}}</span>
            </template>
            <el-menu-item-group>
              <sideBar :list="item.children"></sideBar>
            </el-menu-item-group>
            <el-menu-item :key="item.children.index" :index="item">

            </el-menu-item>

          </el-submenu>
        </template>
        　　　 <!-- 选项 -->
        <template v-else>
          <el-menu-item :key="index" :index="item.index">
            <i :class="item.icon"></i>
            <span>{{item.name}}</span>
          </el-menu-item>
        </template>
      </template>

    </div>
</template>

<script>

export default {
  data () {
    return {
      list: [
        {
          name: "菜单1",
          index: "menu1",
          icon: "el-icon-menu",
          children: [
            {
              name: "菜单1-1",
              index: "menu1-1",
              icon: "el-icon-menu",
              children: []
            },
            {
              name: "菜单1-2",
              index: "menu1-2",
              icon: "el-icon-menu",
              children: []
            }
          ]
        },
        {
          name: "菜单2",
          index: "menu2",
          icon: "el-icon-document-copy",
          children: [
            {
              name: "数据集管理2",
              index: "dataset2",
              icon: "el-icon-document-copy",
              children: []
            },
          ]
        },
        {
          name: "菜单2",
          index: "menu3",
          icon: "el-icon-folder",
          children: []
        }
      ]
    }
  },
  mounted() {
   // this.$axios.get("/db-table/list").then(x => {
   //   this.list = x.data.data
   // })
  },
  methods: {

  }

}
</script>

<style scoped>

</style>
