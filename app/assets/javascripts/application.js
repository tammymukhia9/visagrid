// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require tinymce-jquery
//= require_tree

function toggleResetPswd(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle() // display:block or none
    $('#logreg-forms .form-reset').toggle() // display:block or none
}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

function toggleGuestSignIn(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-guest').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
    $('#logreg-forms #btn-guest').click(toggleGuestSignIn);
    $('#logreg-forms #cancel_guest').click(toggleGuestSignIn);
})

var commentList;

var xmlToCommentList = function (commentResponseXML){
        var comments = [];
        var commentListXML = commentResponseXML.getElementsByTagName("object");

        for (var i=0; i < commentListXML.length; i++){
                var commentXML = commentListXML[i];
                var comment = {
                        id: commentXML.getElementsByTagName("id")[0].textContent,
                        body: commentXML.getElementsByTagName("body")[0].textContent,
                        member_id: commentXML.getElementsByTagName("member-id")[0].textContent,
                        visa_info_id: commentXML.getElementsByTagName("visa-info-id")[0].textContent

                };
                comments.push(comment);
        }
        return comments;
};



var getAllComments = function (visa_info_id) {
    var ajax = new XMLHttpRequest();
    ajax.open("GET", '/comments.xml');
    ajax.onreadystatechange = function(){
        console.log("Ajax state:" + ajax.readyState);
        if(ajax.readyState === 4 && ajax.status ===200){
            console.log ("Complete AJAX object:");
            console.log(ajax);
            commentList = xmlToCommentList(ajax.responseXML);
            console.log(commentList);
            commentList.forEach(comment => {
                if (comment.visa_info_id === visa_info_id){
                    var divId = "comment-div-id-" + comment.id;
                    var memberDivId = "member-div-id-" + comment.id;
                    addCommentField(divId, memberDivId);
                    addCommentToDiv(comment, divId);
                    getMemberName(comment.member_id, memberDivId)
                }
            });

        } else if (ajax.readyState === 4 && ajax.status !== 200) {
            console.log("There was a problem. Status returned was " + ajax.status);
        }
    };
    ajax.oneerror = function() {
        console.log("There was an error");
    };
    ajax.send();
};

var addCommentField = function(divId, mem_divId) {
    var div_tag = document.getElementById('comment-section');
    var newDiv = document.createElement('div');
    newDiv.setAttribute('id',divId);
    newDiv.setAttribute('class','border-top')
    div_tag.appendChild(newDiv);
    var mem_newDiv = document.createElement('div');
    mem_newDiv.setAttribute('id',mem_divId);
    div_tag.appendChild(mem_newDiv);
}

var addCommentToDiv = function(comment, divId) {
    document.getElementById(divId).innerHTML = comment.body;
}


function getMemberName(mem_id, mem_divId){
    var member;
            var ajaxRequest = new XMLHttpRequest();
            ajaxRequest.open('GET', '/members/'+mem_id+'.json');
            ajaxRequest.onreadystatechange = function(){
            
                if(ajaxRequest.readyState == 4){
                    //the request is completed, now check its status
                    if(ajaxRequest.status == 200){
                        memberJson = ajaxRequest.responseText;
                        member = JSON.parse(memberJson);
                        document.getElementById(mem_divId).innerHTML = " - commented by " + member.mem_first_name + " " + member.mem_last_name;
                        console.log(member.mem_first_name);
                    }
                    else{
                        console.log("Status error: " + ajaxRequest.status);
                    }
                }
                else{
                    console.log("Ignored readyState: " + ajaxRequest.readyState);
                }
            
            
            }
            
            ajaxRequest.send();

            
        }