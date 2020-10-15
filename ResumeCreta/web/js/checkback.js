window.history.forward();
function checkback()
{
    window.history.forward();
}

// timeout
function timeout()
{
    setTimeout
    (
        function(timeout)
        {
            close();
            open("http://www.resumecreta.com:8084/ResumeCreta/index/");
        }
        ,6000
    );
}

// time left
var timeleft = 5;
var downloadTimer = setInterval(function()
{
  if(timeleft <= 0)
  {
    clearInterval(downloadTimer);
    document.getElementById("countdown").value = 5;
    document.getElementById("leftsec").innerHTML = "Auto redirect in 0 seconds";
  }
  else 
  {
    var seconds = timeleft;
    document.getElementById("countdown").value = 5-timeleft;
    document.getElementById("leftsec").innerHTML = "Auto redirect in "+ seconds + " seconds";
  }
  timeleft -= 1;
}, 1000);