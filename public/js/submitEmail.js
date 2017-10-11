function submitEmail() {
    let email = document.getElementById("email").value;
    console.log(email);
    if (email) {
        fetch("/signUp",
            {   
                method: "POST",
                headers: {
                    'Accept': 'application/json, text/plain, */*',
                    'Content-Type': 'application/json'},
                body: JSON.stringify({email: document.getElementById("email").value})
            }).then(function(response){ 
                    return response.json();
                }).then(function(data) {
                    showMessage("newsletter-submitted", "alert-success", "<strong>Success!</strong> Email submitted successfully.", 2000)
                }).catch(error => {
                    showMessage("newsletter-submitted", "alert-danger", "<strong>Failure!</strong> Email not submitted!", 2000)
                });
            };
    };            