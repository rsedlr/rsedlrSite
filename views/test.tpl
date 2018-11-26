
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
  #text {
    font-size: 6em;
    line-height: 1em;
    text-align: center;
    position: relative;
    top: 50%;
    transform: translateY(-50%);
  }
  #text:hover {
    cursor: default;
  }
    
  .wrapper {
    display: inline-block;
    top: -900px;
    position: relative;
    height: 150px; /* default */
    width: 90px; /* default */
    transition: ease 0.3s all;
  }
    
  span {
    position: absolute;
    top:0;
    right:0;
    transition: ease 0.3s all;
  }
  span.letter-2 {
    color: rgba(0, 0, 255, 0.5);
  }

  span.letter-1 {
    color: rgba(255, 0, 0, 0.5);
    z-index: 1;
  }
      
  span:hover {
    top: -3px;
    right: -3px;
  }
  span.letter-2:hover {
    top: 3px;
    right: 3px;
  }
      
  span.space {
    padding: 0;
    min-width: 30px;
    display: inline-block;
  } 
</style>
<body>
  <div id="text">
  <!-- content generated with JS -->  
  </div>
</body>
<script>
// type anything here
const text = 'hover me';

// this function turns a string into an array
const createLetterArray = (string) => {
  return string.split('');
}

// this function creates letter layers wrapped in span tags
const createLetterLayers = (array) => {
  return array.map((letter) => {
      let layer = '';
      //specify # of layers per letter
      for (let i = 1; i <= 2; i++) {
        // if letter is a space
        if(letter == ' '){
          layer += '<span class="space"></span>';
        }else{
          layer += '<span class="letter-'+i+'">'+letter+'</span>';
        }
      }
      return layer;
  });
}

// this function wraps each letter in a parent container
const createLetterContainers = (array) => {
  return array.map((item) => {
    let container = '';
    container += '<div class="wrapper">'+item+'</div>';
    return container;
  });
}

// use a promise to output text layers into DOM first
const outputLayers = new Promise(function(resolve, reject) {
      document.getElementById('text').innerHTML = createLetterContainers(createLetterLayers(createLetterArray(text))).join('');
      resolve();
});

// then adjust width and height of each letter
const spans = Array.prototype.slice.call(document.getElementsByTagName('span'));
outputLayers.then(() => {
    return spans.map((span) => {
      setTimeout(() => {
        span.parentElement.style.width = span.offsetWidth+'px';
        span.parentElement.style.height = span.offsetHeight+'px';
      }, 250);
    });  
}).then(() => {
    // then slide letters into view one at a time
    let time = 250;
    return spans.map((span) => {
      time += 75;
      setTimeout(() => {
        span.parentElement.style.top = '0px';
      }, time);
    });
});
</script>