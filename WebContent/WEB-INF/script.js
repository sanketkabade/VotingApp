/**
 * 
 */

// Function to show the popup
function showPopup() {
    var popupContainer = document.getElementById("popupContainer");
    popupContainer.style.display = "block";
}

// Function to close the popup
function closePopup() {
    var popupContainer = document.getElementById("popupContainer");
    popupContainer.style.display = "none";
}

// Check for a query parameter indicating registration success
var urlParams = new URLSearchParams(window.location.search);
if (urlParams.get("registrationSuccess") === "true") {
    showPopup();
}