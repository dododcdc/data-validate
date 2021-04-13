// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

import axios from 'axios'
axios.defaults.baseURL = '/dev-api'
axios.defaults.headers.post['Content-Type'] = 'application/json'
// axios.interceptors.request.use(config => {
//   console.log(config.url)

// })

Vue.prototype.$axios = axios
Vue.prototype.msgSuccess = function (msg) {
  this.$message({ showClose: true, message: msg, type: "success" });
};

Vue.config.productionTip = false

Vue.use(ElementUI);
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
