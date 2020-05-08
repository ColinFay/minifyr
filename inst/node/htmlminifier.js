const minify = require('@node-minify/core');
const htmlMinifier = require('@node-minify/html-minifier');

minify({
  compressor: htmlMinifier,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
