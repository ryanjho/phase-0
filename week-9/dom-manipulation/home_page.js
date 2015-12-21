// DOM Manipulation Challenge


// I worked on this challenge by myself.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var classElements = document.getElementsByClassName("release-4");
for (var i = 0; i < classElements.length; i++) {
	classElements[i].style.fontSize = "2em";
}


// Release 5:
var templ = document.getElementById("hidden");
document.body.appendChild(templ.content.cloneNode(true));

/*
What did you learn about the DOM?
- I learned the syntax on how to access an manipulate HTML elements using the DOM nodes
- To acess classes, it is important to remember that the elements associated with the same class are stored in an array, each having an index.
- Thus, in Releae 4, I had to use a loop to iterate through all elements with the same class name and then change its fontSize.

What are some useful methods to use to manipulate the DOM?
- getElementByID is a useful method to access HTML elements by ID name
- The innerHTML method is also useful to manipulate the text inside the HTML element
*/
