// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with myself.
// This challenge took me 3 hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Input: An object, votes, that contains votes cast by each student
Output: An object, officers, with the number of votes tallied and assigned the name of the student who received the most votes to each officer position.
Steps:
1) Set vote count for every student for each position to be 0
2) Iterate through the votes object to count the number of votes each student has for each officer position
3) Input this data into the voteCount object
4) Sort through voteCount object and pick only the top voted student for each officer position
5) Store top voted student for each officer position into the officers object's respective properties.
*/

// __________________________________________
// Initial Solution
/*
// Set voteCounts for every student for each position to be 0
for (var key in votes) {
  voteCount.president[key] = 0;
  voteCount.vicePresident[key] = 0;
  voteCount.secretary[key] = 0;
  voteCount.treasurer[key] = 0;
};


// Iterate through votes object and count votes of each student for each officer position
for (var studentName in votes) {
  if (votes.hasOwnProperty(studentName)) {
    var voteCasted = votes[studentName];
    for (var prop in voteCasted) {
      if (voteCasted.hasOwnProperty(prop)) {
        if (prop === "president") {
          voteCount.president[voteCasted[prop]] ++;
        } else if (prop == "vicePresident") {
          voteCount.vicePresident[voteCasted[prop]] ++;
        } else if (prop == "secretary") {
          voteCount.secretary[voteCasted[prop]] ++;
        } else if (prop == "treasurer") {
          voteCount.treasurer[voteCasted[prop]] ++;
        }
      }
    }
  }
}

// For each officer position in voteCount object, pick the student with the highest number of votes
// a) president
var presidentArray = [];
for (var prop in voteCount.president) {
  presidentArray.push([prop, voteCount.president[prop]]);
}
presidentArray.sort(function(a,b) {
  return b[1] - a[1];
})
officers.president = presidentArray[0][0];

// b) vicePresident
var vicePresidentArray = [];
for (var prop in voteCount.vicePresident) {
  vicePresidentArray.push([prop, voteCount.vicePresident[prop]]);
}
vicePresidentArray.sort(function(a,b) {
  return b[1] - a[1];
})
officers.vicePresident = vicePresidentArray[0][0];

// c) secretary
var secretaryArray = [];
for (var prop in voteCount.secretary) {
  secretaryArray.push([prop, voteCount.secretary[prop]]);
}
secretaryArray.sort(function(a,b) {
  return b[1] - a[1];
})
officers.secretary = secretaryArray[0][0];

// d) treasurer
var treasurerArray = [];
for (var prop in voteCount.treasurer) {
  treasurerArray.push([prop, voteCount.treasurer[prop]]);
}
treasurerArray.sort(function(a,b) {
  return b[1] - a[1];
})
officers.treasurer = treasurerArray[0][0];
*/

// __________________________________________
// Refactored Solution
function calculateVotes(obj) {
  for (var studentName in obj) {
    for (var office in obj[studentName]) {
      if (voteCount[office][obj[studentName][office]] == undefined) {
        voteCount[office][obj[studentName][office]] = 0;
      } 
      voteCount[office][obj[studentName][office]] ++;
    }
  }
}

calculateVotes(votes);

console.log(voteCount);

function assignOfficer(obj) {
  for (var office in obj) {
    for (var studentName in obj[office]) {
      if (officers[office] == undefined) {
        officers[office] = studentName;
      }
      if (obj[office][studentName] > obj[office][officers[office]]) {
        officers[office] = studentName;
      }
    }
  }
}

assignOfficer(voteCount);


// function sortVotes(array) {
//   for (var office in array) {
//     for (var key in array[office]) {
//       if (voteCount[office]) {}
//     }
//   }
// }

// var presidentArray = [];
// for (var prop in voteCount.president) {
//   presidentArray.push([prop, voteCount.president[prop]]);
// }
// presidentArray.sort(function(a,b) {
//   return b[1] - a[1];
// })
// officers.president = presidentArray[0][0];


// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
- Through this challenge, I definitely got more confident iterating through nested objects in JavaScript.
- I learned that it pays to be careful and attentive to syntax when coding the nested for loops. 
- I created the correct nested for loop structure fairly quickly, but was careless in the syntax, which caused me to spend quite some time with the debugging.

Were you able to find useful methods to help you with this?
- I was able to find .sort method useful in my initial solution
- In my refactored solution, I managed to find out a way around having to create individual arrays for each officer position, but just assigning an officer to officers object, and then comparing them individually as I iterate through voteCount object.

What concepts were solidified in the process of working through this challenge?
- I was able to solidify my understanding of loops and how to use them effectively to iterate through nested objects (properties and values).
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)