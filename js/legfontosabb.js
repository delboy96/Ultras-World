$("#btnVote").click(vote);

function vote() {
  var odgovori = document.getElementsByName("radioPoll");
  var odgovor = null;

  for (var i = 0; i < odgovori.length; i++) {
    if (odgovori[i].checked) {
      odgovor = odgovori[i].value;
    }
  }

  var pitanje = document.getElementById("pitanje").value;
  var user = document.getElementById("userPolje").value;

  $.ajax({
    type: "POST",
    url: "php/sendResultsPoll.php",
    dataType: "JSON",
    data: {
      "user_id": user,
      "question_id": pitanje,
      "suggestion_id": odgovor,
    },
    dataType: "json",
    complete: function (response) {
      getRezultati();
    },
    error: function (xhr, status, errorMsg) {
      let message = "Kod" + xhr.status + "je " + errorMsg;
      // console.log(message);
    }

  })
}

function getRezultati() {
  $.ajax({
    type: "POST",
    url: "php/getRes.php",
    dataType: "json",
    success: function (response) {
      $("#odgovori").hide();
      $("#rezultati").show();
      var divBtn = document.getElementById("divBtn");
      divBtn.classList.add("hidden");
      var html = "<h2 class='mojaboja marginBottom'>Results of the poll:</h2>";
      $.each(response, function (index, podatak) {
        html += "<li class='marginBottom'><b>" + podatak.numAnsw + "</b> : " + podatak.sBody + "</li>";
      });
      $("#rezAnk").html(html);
      console.log(response);
    },
    error: function (xhr, status, errorMsg) {
      let message = "Kod" + xhr.status + "je " + errorMsg;
      // console.log(message);
    }
  });
}