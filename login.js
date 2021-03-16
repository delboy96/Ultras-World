var btn = document.querySelector("#login-btn");

document.addEventListener("DOMContentLoaded", function () {
  btn.addEventListener("click", login);
});

function login() {
  var mejlPolje = document.getElementById("mejl").value;
  var passPolje = document.getElementById("pass").value;
  var reMejl = /^[a-z]+\.[a-z]+\.([1-9][0-9]{0,3})\.(1[0-8])\@ict\.edu\.rs$/;
  var rePass = /^[0-9A-z]{4,}$/;

  var greske = [];

  if (!reMejl.test(mejlPolje)) {
    greske.push("E-mail not valid.");
  }

  if (!rePass.test(passPolje)) {
    greske.push("Password not valid.");
  }

  if (greske.length === 0) {
    console.log("ok");

    $.ajax({
      type: "POST",
      url: "php/loginVal.php",
      data: {
        email: mejlPolje,
        password: passPolje,
        loginBtn: "sta sam jeooo"
      },
      dataType: "json",
      success: function (response) {
        window.location = 'https://ultrasworld.000webhostapp.com/index.php';
      },
      error: function (xhr, status, errorMsg) {
        let message = "Kod" + xhr.status + "je " + errorMsg;
        console.log(message);
      }
    });
  } else {
    let output = '';
    for (var greska of greske) {
      output += `<li class="has-text-danger">${greska}</li>`
      document.querySelector('#errors').innerHTML = output
    }
  }
}