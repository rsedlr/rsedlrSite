
var i = 0;
var open = [' <span class="code fun">function</span> <span class="code var">name</span><span class="code brak">(</span><span class="code param">param</span><span class="code brak">)</span> <span class="code curly">{</span> ',
            ' <span class="code fun">for</span><span class="code brak">(</span><span class="code var">i</span> <span class="code fun">=</span> <span class="code num">0</span><span class="code semi">;</span> <span class="code var">i</span> <span class="code fun"><</span> <span class="code var">limit</span><span class="code semi">;</span> <span class="code var">i</span><span class="code fun">++</span><span class="code brak">)</span> <span class="code curly">{</span> ',
            ' <span class="code fun">while</span><span class="code brak">(</span><span class="code param">condtition</span><span class="code brak">)</span> <span class="code curly">{</span> '] 
            // ' <span class="code angle">&lt</span><span class="code var">div</span><span class="code angle">&gt</span> '];
            
var content = ['<span class="code var">int</span> <span class="code fun">+=</span> <span class="code num">1</span><span class="code semi">;</span> ',
               '<span class="code var">foo</span> <span class="code fun">=</span> <span class="code var">bar</span> <span class="code fun">*</span> <span class="code num">2</span><span class="code semi">;</span> ',
               '<span class="code fun">code</span><span class="code brak">()</span><span class="code semi">;</span> '];
               
var close = [' <span class="code curly"> } </span> ',
             ' <span class="code curly"> } </span> ',
             ' <span class="code curly"> } </span> ']
            //  '<span class="code semi">;</span>', '});',
            //  ' <span class="code angle">&lt</span><span class="code var">/div</span><span class="code angle">&gt</span> ']

function codeBackground() {
  var code = "", rand = 0, rand2 = 0;
  // var rand = 0, rand2 = 0;
  var header = document.getElementById('wallpaper');
  while (header.firstChild) header.removeChild(header.firstChild); // wipes background

  for (var i = 0; i < 130; i++) {
    rand = Math.floor(Math.random() * open.length);
    rand2 = Math.floor(Math.random() * content.length);
    // rand = 0;
    code += `${open[rand]}${content[rand2]}${close[rand]}`;
  }

  header.innerHTML = code;

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