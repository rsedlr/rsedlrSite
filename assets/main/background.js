
var i = 0;
// var open = [' <span class="code fun">function</span> <span class="code var">name</span><span class="code brak">(</span><span class="code param">param</span><span class="code brak">)</span> <span class="code curly">{</span> ',
//             ' <span class="code fun">for</span><span class="code brak">(</span><span class="code var">i</span> <span class="code fun">=</span> <span class="code num">0</span><span class="code semi">;</span> <span class="code var">i</span> <span class="code fun"><</span> <span class="code var">limit</span><span class="code semi">;</span> <span class="code var">i</span><span class="code fun">++</span><span class="code brak">)</span> <span class="code curly">{</span> ',
//             ' <span class="code fun">while</span><span class="code brak">(</span><span class="code param">condtition</span><span class="code brak">)</span> <span class="code curly">{</span> ',
//             ' <span class="code fun">do</span> <span class="code curly">{</span>'] 
//             // ' <span class="code angle">&lt</span><span class="code var">div</span><span class="code angle">&gt</span> '];
            
// var content = ['<span class="code var">int</span> <span class="code fun">+=</span> <span class="code num">1</span><span class="code semi">;</span> ',
//                '<span class="code var">foo</span> <span class="code fun">=</span> <span class="code var">bar</span> <span class="code fun">*</span> <span class="code num">2</span><span class="code semi">;</span> ',
//                '<span class="code fun">code</span><span class="code brak">()</span><span class="code semi">;</span> ',
//                '<span class="code var">square</span> <span class="code fun">=</span> <span class="code var">num</span> <span class="code fun">**</span> <span class="code num">2</span><span class="code semi">;</span> ',
//                '<span class="code var">str</span> <span class="code fun">=</span> <span class="code string">\'string\'</span><span class="code semi">.</span><span class="code fun">slice</span><span class="code brak">(</span><span class="code num">0</span><span class="code semi">,</span><span class="code num">3</span><span class="code brak">)</span><span class="code semi">;</span> '];
               
// var close = [' <span class="code curly"> } </span> ',
//              ' <span class="code curly"> } </span> ',
//              ' <span class="code curly"> } </span> ',
//              ' <span class="code curly"> } </span> <span class="code fun">while</span><span class="code brak">(</span><span class="code param">condtition</span><span class="code brak">)</span>'];
//             //  '<span class="code semi">;</span>', '});',
//             //  ' <span class="code angle">&lt</span><span class="code var">/div</span><span class="code angle">&gt</span> ']

var open = [' function name(param) { ',
            ' for(i = 0; i < limit; i++) { ',
            ' while(condtition) { ',
            ' case (param) { ',
            ' array.foreach(function(param) { ',
            ' do { '] 
            // ' &ltdiv&gt '];
            
var content = ['int += 1; ',
               'foo = bar * 2; ',
               'code(); ',
               'float = 2.0; ',
               'square = num ** 2; ',
               `arr = new array[`,
               'str = \'string\'.slice(0,3); '];
               
var close = [' } ',
             ' } ',
             ' } ',
             ' } ',
             ' }); ',
             ' } while(condtition); '];
            //  ';', '});',
            //  ' <span class="code angle">&lt<span class="code var">/div<span class="code angle">&gt ']

function randomMax(max) {
  return Math.floor(Math.random() * Math.floor(max));
}

function codeBackground() {
  var code = "";
  var header = document.getElementById('wallpaper');

  var width = document.documentElement.clientWidth;
  var height = document.documentElement.clientHeight;
  var size = Math.sqrt(width * height) / 10;

  // console.log(`width: ${width}, height: ${height}, size: ${size}`);

  while (header.firstChild) header.removeChild(header.firstChild); // wipes background

  for (var i = 0; i < size; i++) {
    openRand = Math.floor(Math.random() * open.length);
    contentCount = Math.floor(Math.random() * 3) + 1;
    code += open[openRand];
    for (var n = 0; n < contentCount; n++) {
      contentRand = Math.floor(Math.random() * content.length);
      if (contentRand == 5) { 
        code += content[contentRand] + randomMax(9) + '] ';
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

// var code = "";
// var i = 0;

// function typeWriter() {
//   if (i < code.length) {
//     document.getElementById("wallpaper").innerHTML += code.charAt(i);
//     i++;
//     setTimeout(typeWriter, 1);
//   }
// }

function highlightBackground() {
  var codeElements = document.getElementById("wallpaper")

  var strReg1 = /"(.*?)"/g,
      strReg2 = /'(.*?)'/g,
      specialReg = /\b(new|var|if|do|function|while|switch|for|foreach|break|slice)(?=[^\w])/g,
      paramReg = /\b(param|condtition)(?=[^\w])/g,
      varReg = /\b(limit|square|num|name|i|foo|bar|array|arr)(?=[^\w])/g,
      bracketReg = /(\(|\)|{|})/g,
      functionReg = /\b(code)(?=[^\w])/g,
      intReg = /\b(0|1|2|3|4|5|6|7|8|9)(?=[^\w])/g,
      // angleReg = /\b(\<|\>)(?=[^\w])/g,
      // operatorReg = /\b(\+|\*)/g,
      declarationReg = /\b(int|str|float)(?=[^\w])/g;

  var string = codeElements.innerHTML,
    parsed = string.replace(strReg1,'<span class="string">"$1"</span>');
    parsed = parsed.replace(strReg2,"<span class=\"string\">'$1'</span>");
    parsed = parsed.replace(bracketReg,'<span class="bracket">$1</span>');
    parsed = parsed.replace(specialReg,'<span class="special">$1</span>');
    parsed = parsed.replace(varReg,'<span class="var">$1</span>');
    parsed = parsed.replace(paramReg,'<span class="param">$1</span>');
    // parsed = parsed.replace(operatorReg,'<span class="operator">$1</span>');
    // parsed = parsed.replace(angleReg,'<span class="angle">$1</span>');    
    parsed = parsed.replace(intReg,'<span class="num">$1</span>');
    parsed = parsed.replace(functionReg,'<span class="fun">$1</span>');
    parsed = parsed.replace(declarationReg,'<span class="dec">$1</span>');

  codeElements.innerHTML = parsed;
}


$(document).ready(function () {
  codeBackground();
});


// 
//  TODO:
//    -calc num characters need to fill screen and only gen code till thats met
//    -generate the code nicer
//    -have some sort of colour theme rather than purely random (some are too similar to background)
//    -make title text stand out better
//    -text should fill screen in a nicer way
// 