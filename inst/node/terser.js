const minify = require('@node-minify/core');
const terser = require('@node-minify/terser');

minify({
  compressor: terser,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
