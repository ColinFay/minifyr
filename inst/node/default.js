const minify = require('@node-minify/core');
const compressor = require('@node-minify/' + process.argv[4]);

minify({
  compressor: compressor,
  input: process.argv[2],
  output: process.argv[3],
  callback: (e, res) => {}
});
