

var snippets = ['&ltcode&gt', 'function code(code) { ', ' }', 'code += 1', 'code = code * 2', 'code()'];
// OR
var open = ['&ltcode&gt', 'function code(code) { '];
var content = ['code += 1', 'code = code * 2', 'code()'];
var close = ['&lt/code&gt', ' }', '});', ';']


$(document).ready(function () {
  var temp = "";
  for (var i = 0; i < 2000; i++) {
    temp += `<span style="color: ${'#' + (0x1000000 + (Math.random()) * 0xffffff).toString(16).substr(1, 6)}">${snippets[Math.floor(Math.random()*snippets.length)]} </span>`;
  }

  setTimeout(function () { 
    var header = document.getElementsByTagName('header')[0];
    header.innerHTML = temp;
   }, 900);

});