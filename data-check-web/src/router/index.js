import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import check from '@/components/check'
import datasource from '@/components/datasource/index'
import list from '@/components/datasource/list'
import Database from '@/Database'
import metadata from '@/components/metadata/index'
import Welcome from '@/components/Welcome.vue'
import Rule from '@/components/rule/index.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/g',
      name: 'HelloWorld',
      component: HelloWorld

    },
    {

      path: '/',
      name: 'check',
      component: check
    },
    {
      path: '/datasource',

      name: 'datasource',

      component: datasource

    },
    {
      path: '/list',
      name: 'list',
      component: list
    },
    {
      path: '/Database',
      name: 'Database',
      component: Database,
      // redirect: '/Welcome',
      children: [
        {
          path:'/Welcome',
          component: Welcome
        }
      ]
    },
    {
      path: '/metadata/:id',
      name: 'metadata',
      props:true,
      component: metadata
    },
    {
      path: '/Rule',
      name: 'Rule',
      props: true,
      component: Rule
    }
  ]
})
