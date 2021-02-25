import 'bootstrap'
import '../stylesheets/application';
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import '@fortawesome/fontawesome-free/js/all';
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery") //jQueryを追加
require("bootstrap") //Bootstrapを追加
require("./test.js") //テスト用
Rails.start()
Turbolinks.start()
ActiveStorage.start()
console.log("application.js")

