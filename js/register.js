function proveraReg() {
  var usernamePolje = document.getElementById("user").value;
  var mejlPolje = document.getElementById("mejl").value;
  var sifraPolje = document.getElementById("sifra").value;
  var sifraPotvrdaPolje = document.getElementById("sifraP").value;

  var reUser = /^([a-zA-Z]{2,15})+$/;
  var reMejl = /^[a-z]+\.[a-z]+\.([1-9][0-9]{0,3})\.(1[0-8])\@ict\.edu\.rs$/;
  var reSifra = /^[0-9A-z]{4,}$/;

  var greske = [];

  if (!reUser.test(usernamePolje)) {
    greske.push("Username not valid.");
  }

  if (!reMejl.test(mejlPolje)) {
    greske.push("E-mail not valid.");
  }

  if (!reSifra.test(sifraPolje)) {
    greske.push("Password do not answer requirements.");
  }

  if (!reSifra.test(sifraPotvrdaPolje) && sifraPotvrdaPolje == mejlPolje) {
    greske.push(
      "Password not same as first one or do not answer requirements."
    );
  }

  // var errors = document.querySelector("#errors");
  // if (greske.length == 0) {
  //   document.querySelector("#naslov").textContent =
  //     "You have been registered succesfully!!";
  //   setTimeout(function() {
  //     window.location.href = "php/login.php";
  //   }, 1500);
  //   errors.innerHTML = "";
  // } else {
  //   var ispis = "";
  //   for (var i = 0; i < greske.length; i++) {
  //     ispis += "<li class='has-text-danger'>" + greske[i] + "</li>";
  //   }
  //   errors.innerHTML = ispis;
  // }

  //AJAX TRPAO REALA

  if (greske.length === 0) {
    return true;
  } else {
    let output = '';

    for (greska of greske) {
      output += `<li class="has-text-danger">${greska}</li>`;
      document.querySelector('#errors').innerHTML = output;
    }
    return false;
  }
}