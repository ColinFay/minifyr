const minify = require('@node-minify/core');
const sqwish = require('@node-minify/sqwish');

minify({
  compressor: sqwish,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
