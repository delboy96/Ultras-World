var btn = document.querySelector("#btnContact");

document.addEventListener("DOMContentLoaded", function () {
    btn.addEventListener("click", contact);
});

function contact() {
    var usernamePolje = document.getElementById("user").value;
    var mejlPolje = document.getElementById("email").value;
    var textPolje = document.getElementById("text").value;

    var reMejl = /^[a-z]+\.[a-z]+\.([1-9][0-9]{0,3})\.(1[0-8])\@ict\.edu\.rs$/;
    var reUser = /^([a-zA-Z]{2,15})+$/;

    var greske = [];

    if (!reUser.test(usernamePolje)) {
        greske.push("Username not valid.");
    }

    if (!reMejl.test(mejlPolje)) {
        greske.push("E-mail not valid.");
    }

    if (greske.length === 0) {
        console.log("ok");

        $.ajax({
            type: "POST",
            url: "php/contactVal.php",
            data: {
                user: usernamePolje,
                email: mejlPolje,
                text: textPolje,
                contactBtn: "nisam liznoo",
            },
            dataType: "json",
            success: function (response) {
                alert('Poslato ajaxom.');
            },
            error: function (xhr, status, errorMsg) {
                let message = "Kod" + xhr.status + "je " + errorMsg;
                console.log(message);
            }
        });
    } else {
        let output = '';
        for (greska of greske) {
            output += `<li class="has-text-danger">${greska}</li>`;
            document.querySelector('#errors').innerHTML = output;
        }
    }
}