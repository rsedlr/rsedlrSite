var i = 0;

var open = [
   ' function name(param) { ',
   ' for(i = 0; i < limit; i++) { ',
   ' while(condition) { ',
   ' case(param) { ',
   ' array.foreach(function(param) { ',
   ' do { ',
];

var content = [
   'int += ',
   'foo = bar * ',
   'code(); ',
   'float = ',
   'square = num ** 2; ',
   `arr = new array[`,
   'remainder = ',
   "str = 'string'.slice(0,3); ",
];

var close = [' } ', ' } ', ' } ', ' } ', ' }); ', ' } while(condition); '];

function randomMax(max) {
   return Math.floor(Math.random() * max);
   // return Math.floor(Math.random() * Math.floor(max));
}

function codeBackground() {
   var code = '';
   var header = document.getElementById('wallpaper');

   var width = document.documentElement.clientWidth;
   var height = document.documentElement.clientHeight;
   var size = Math.sqrt(width * height) / 15; // 10

   // while (header.firstChild) header.removeChild(header.firstChild); // wipes background

   for (var i = 0; i < size; i++) {
      openRand = randomMax(open.length);
      contentCount = randomMax(4) + 1;
      code += open[openRand];
      for (var n = 0; n < contentCount; n++) {
         contentRand = randomMax(content.length);
         if (contentRand == 5) {
            code += content[contentRand] + randomMax(9) + '] ';
         } else if (contentRand == 3) {
            code += content[contentRand] + randomMax(9) + '.' + randomMax(9) + '; ';
         } else if (contentRand == 6) {
            code += content[contentRand] + randomMax(9) + ' % ' + randomMax(9) + '; ';
         } else if (contentRand == 0 || contentRand == 1) {
            code += content[contentRand] + randomMax(9) + '; ';
         } else {
            code += content[contentRand];
         }
      }
      code += close[openRand];
   }

   header.innerHTML = code;
   highlightBackground();
   // typeWriter();
}

function highlightBackground() {
   var codeElements = document.getElementById('wallpaper');

   var strReg1 = /"(.*?)"/g,
      strReg2 = /'(.*?)'/g,
      specialReg =
         /\b(new|var|if|do|function|while|switch|for|foreach|break|slice)(?=[^\w])/g,
      paramReg = /\b(param|condition)(?=[^\w])/g,
      varReg = /\b(limit|square|num|name|i|foo|bar|array|arr|remainder)(?=[^\w])/g,
      bracketReg = /(\(|\)|{|})/g,
      functionReg = /\b(code)(?=[^\w])/g,
      intReg = /\b(0|1|2|3|4|5|6|7|8|9)(?=[^\w])/g,
      // angleReg = /\b(\<|\>)(?=[^\w])/g,
      // operatorReg = /\b(\+|\*)/g,
      declarationReg = /\b(int|str|float)(?=[^\w])/g;

   var string = codeElements.innerHTML,
      parsed = string.replace(strReg1, '<span class="string">"$1"</span>');
   parsed = parsed.replace(strReg2, '<span class="string">\'$1\'</span>');
   parsed = parsed.replace(bracketReg, '<span class="bracket">$1</span>');
   parsed = parsed.replace(specialReg, '<span class="special">$1</span>');
   parsed = parsed.replace(varReg, '<span class="var">$1</span>');
   parsed = parsed.replace(paramReg, '<span class="param">$1</span>');
   // parsed = parsed.replace(operatorReg,'<span class="operator">$1</span>');
   // parsed = parsed.replace(angleReg,'<span class="angle">$1</span>');
   parsed = parsed.replace(functionReg, '<span class="fun">$1</span>');
   parsed = parsed.replace(declarationReg, '<span class="dec">$1</span>');
   parsed = parsed.replace(intReg, '<span class="num">$1</span>');

   codeElements.innerHTML = parsed;
}

// var code = '';
// var i = 0;
//
// function typeWriter() {
//    if (i < code.length) {
//       document.getElementById('wallpaper').innerHTML += code.charAt(i);
//       i++;
//       setTimeout(typeWriter, 1);
//    }
// }

$(document).ready(function () {
   codeBackground();
});

//  TODO:
//    -calc num characters need to fill screen and only gen code till thats met
//    -generate the code nicer
//    -no text cut off at right cos of new line
//
