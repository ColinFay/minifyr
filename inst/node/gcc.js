const minify = require('@node-minify/core');
const gcc = require('@node-minify/google-closure-compiler');

minify({
  compressor: gcc,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
