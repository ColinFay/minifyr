const minify = require('@node-minify/core');
const uglifyJS = require('@node-minify/uglify-es');

minify({
  compressor: uglifyJS,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
