// Set up a dummy function so we don't pollute the global namespace
(function () {
  "use strict";

  var insertUsers = function(users) {
    var list = document.getElementById("authorList");
    list.getElementsByClassName("noneMarker")[0].hidden = true;
    users.forEach(function(user){
      var newLI = document.createElement("li");
      var newText = document.createTextNode(user.lastName + ", " + user.firstName + ": " + user.id);
      newLI.appendChild(newText);
      list.appendChild(newLI);
    });
  };


  var xmlToUsers = function (userResponseXML) {

    var authors = [];
    var authorListXML = authorResponseXML.getElementsByTagName("object");

    for (var i = 0; i < userauthorListXML.length; i++) {
      var authorXML = authorListXML[i];
      var author = {
        firstName: userXML.getElementsByTagName("fname")[0].textContent,
        lastName: userXML.getElementsByTagName("lname")[0].textContent,
        id: userXML.getElementsByTagName("id")[0].textContent
      };
      authors.push(author);

    }
    return authors;
  };

  var loadAuthors = function () {
    var ajax = new XMLHttpRequest();
    console.log("Click!");

    // Replace URL below with the URL for your server.
    ajax.open("GET", 'https://cis658-zacharykurmas464826.codeanyapp.com/authors.xml');
    ajax.onreadystatechange = function () {
      console.log("Ajax state: " + ajax.readyState);
      if (ajax.readyState === 4 && ajax.status === 200) {
        console.log("Complete AJAX object:");
        console.log(ajax);
        var authors = xmlToAuthors(ajax.responseXML);
        insertAuthors(authors);
      } else if (ajax.readyState === 4 && ajax.status !== 200) {
        console.log("There was a problem.  Status returned was " + ajax.status);
      }
    };

    ajax.onerror = function () {
      console.log("There was an error!");
    };

    // Notice that send is asynchronous.  This method does not block,
    // instead, the code in onreadystatechange above runs when the call
    // is complete.
    ajax.send();
  };

// Don't apply the event listeners until the document has loaded.
  document.addEventListener("readystatechange", function () {
    console.log("Ready:  " + document.readyState);
    if (document.readyState === "interactive") {
      var loadButton = document.getElementById("loadButton");
      loadButton.addEventListener("click", loadAuthors);
    }
  });
})();