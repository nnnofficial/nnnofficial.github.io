<center><h1 id="countdown"></h1></center>

<script>
var countDownDate = new Date("2019-12-01T00:00:00Z").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  var now = new Date().getTime();
  var y_now = now.getYear();
  countDownDate.setFullYear(y_now);
  
  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  // 2629800 seconds is one month
  if (distance > 2629800) {
    clearInterval(x);
    document.getElementById("countdown").innerHTML = "NNN has not begun... yet";
  } else if (distance < 0 && distance > -2629800) {
	clearInterval(x);
    document.getElementById("countdown").innerHTML = "DDD IS ON BOYS TIME TO NUKE THE PP";  
  }
}, 1000);
</script>
