// DOM Manipulation Challenge


// I worked on this challenge [by myself Jeremy Oltean ].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:

function release_one() {
 document.getElementById("release-0").className = "done";
}



// Release 2:

function release_two() {
  document.getElementById("release-1").style.display = "none";
}


// Release 3:

function release_three() {
   document.getElementById("release-2").innerHTML = "I completed released 2!";
}


// Release 4:

function release_four() {
   document.getElementById("release-3").style.backgroundColor = "#955251 ";
}



// Release 5:
function release_five() {
   var elements = document.getElementsByClassName("release-4");
   for (var i=0; i < elements.length; i++) {
   var element = elements[i]
   element.style.fontSize = "2em";    
   }
   
}

// Release 6:

function release_six() {
    var tmpl = document.getElementById('hidden');
    document.body.appendChild(tmpl.content.cloneNode(true));
}

// Reflection:
/*
What did you learn about the DOM?
The DOM is a tree-like model that mirrors the nested element structure of a 
website's HTML. The document object in the DOM is not directly tied to a specific 
html element. It is the root of the DOM and is used to access all the elements in 
an entire document. Every element in the DOM has properties that can be updated. If 
a class is shared by more than one element, you need to use iteration to make sure 
all the elements are modified.

What are some useful methods to use to manipulate the DOM?
We used the getElementByID to access and make changes to specific. We used body onLoad in the html file to make sure all of our changes were implemented automatically when the site finishes loading.
*/









