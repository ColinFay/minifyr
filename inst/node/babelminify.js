const minify = require('@node-minify/core');
const babelMinify = require('@node-minify/babel-minify');

minify({
  compressor: babelMinify,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
