console.log("environment")
const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
console.log("environment1")
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)
console.log("environment2")
module.exports = environment
