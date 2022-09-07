const { environment } = require('@rails/webpacker')
const Base = require('@rails/webpacker/package/environments/base')
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment

