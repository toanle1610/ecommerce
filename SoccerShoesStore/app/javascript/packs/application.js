// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Vue from 'vue/dist/vue.esm.js'
// import Vue from 'vue'
import App from '../app.vue'
import BootstrapVue from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';
Vue.use(BootstrapVue);

var element = document.getElementsByClassName("vertical-menu");
document.addEventListener('turbolinks:load', () => {
  // document.body.insertBefore(document.createElement('app'), document.body.firstChild)
  var productcategories = JSON.parse(document.getElementsByClassName("vertical-menu")[0].dataset.category);
  productcategories.unshift('None');

  new Vue({
    el: "#app",
    data: {
      categories: productcategories,
    }
  })
  // new Vue({
  //   el: "#app",
  //   data: {
  //     categories: productcategories
  //   },
  //   template: App.document,
  //   render: h => h(App, {
  //     props: {
  //       categories: productcategories
  //     }
  //   })
  // });
  // console.log(app)
})
