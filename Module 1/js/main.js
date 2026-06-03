console.log("Welcome to the Community Portal");

window.onload = function () {
    alert("Page Loaded Successfully");
};

const eventName = "Music Festival";
const eventDate = "15 June 2026";
let seats = 50;

console.log(`${eventName} on ${eventDate}`);

document.getElementById("registrationForm")
.addEventListener("submit", function(event){

    event.preventDefault();

    let name =
        this.elements["name"].value.trim();

    let email =
        this.elements["email"].value.trim();

    let selectedEvent =
        this.elements["event"].value;

    let error = "";

    if(name === ""){
        error += "Enter Name\n";
    }

    if(email === ""){
        error += "Enter Email\n";
    }

    if(selectedEvent === ""){
        error += "Select Event\n";
    }

    if(error !== ""){
        document.getElementById("errorMsg")
        .innerText = error;

        document.getElementById("successMsg")
        .innerText = "";

        return;
    }

    try{

        seats--;

        document.getElementById("errorMsg")
        .innerText = "";

        document.getElementById("successMsg")
        .innerText =
        `Registration Successful! Remaining Seats: ${seats}`;

    }
    catch(err){

        document.getElementById("errorMsg")
        .innerText = err.message;
    }

});