function redirectToDate(){
    let date = document.getElementById("date").value
    if (date) {
        window.location.replace('/byDate/'+ date)
        }
    }    