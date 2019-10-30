-- site.moon
sitegen = require "sitegen"

sitegen.create =>
  @title = "NNN"
  @countdown = "<center><h1 id='countdown'></h1></center>

<script>
var fullDate = new Date('Dec 01, 2019 00:00:00')

// Update the count down every 1 second
var x = setInterval(function() {

  var now = new Date().getTime();

  // Set time to current year
  var y_now = new Date().getFullYear();
  fullDate.setFullYear(y_now);
  var countDownDate = fullDate.getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id='demo'
  document.getElementById('countdown').innerHTML = days + 'd ' + hours + 'h ' + minutes + 'm ' + seconds + 's ';

  // If the count down is finished, write some text
  // 2629800 seconds is one month
  if (distance > 2592000000) {
    clearInterval(x);
    document.getElementById('countdown').innerHTML = 'NNN has not begun... yet';
  } else if (distance < 0) {
        clearInterval(x);
        document.getElementById('countdown').innerHTML = 'DDD IS ON BOYS TIME TO NUKE THE PP';
  }
}, 1000);
</script>"

  add "index.md", template: "default", target: "index"
