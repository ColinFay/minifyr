const minify = require('@node-minify/core');
const cleanCSS = require('@node-minify/clean-css');

minify({
  compressor: cleanCSS,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
