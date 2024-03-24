function playOnce(loc) {
    var gif = document.getElementById("gif");
    gif.src = gif.src; // Reset the source to restart the animation
    setTimeout(function () {
        window.location.href =loc ; // Hide the GIF after the animation completes
    }, 1000); // Adjust the timeout based on your GIF's duration
}