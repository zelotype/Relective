function loading() {
    if(document.getElementById('modal').style.display == "none")
        document.getElementById('modal').style.display = "block";
    setTimeout(function () {
        document.getElementById('modal').style.display = "none";
    }, 2000);
}
