// connection lost msg on refresh
var isOnline = window.navigator.onLine;
if (isOnline) 
{
  console.log('online');
}
else
{
  alert('Oops... Internet connection unavailable.');
}

function lost()
{
    alert('You have lost connection with the server \u2639.\nCheck your connection & try again.');
    document.getElementById("body").innerHTML = "<center><img src='http://localhost:8084/ResumeCreta/images/connection.gif' style='width:40%;height:auto; margin-top:4%;border-radius:50%;' draggable='false'></center>";
}

function load()
{
    alert('You have reconnected to the server \u263A.\nReload / Refresh for better experience.');
    document.getElementById("body").style.display = "block";
    location.reload();
}

function none()
{
    document.getElementById("body").style.display = "none";
}