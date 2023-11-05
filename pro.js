const express = require('express');
const app = express();
const port = 3000;

// Define routes for registration, login, voting, and results
app.use('/register', require('./routes/registration'));
app.use('/login', require('./routes/login'));
app.use('/vote', require('./routes/voting'));
app.use('/results', require('./routes/results'));

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
document.getElementById("loginForm").addEventListener("submit", function (event) {
    event.preventDefault();
    
    const aadharNumber = document.getElementById("aadharNumber").value;
    const phoneNumber = document.getElementById("phoneNumber").value;

    // Replace with actual logic to check user credentials in the database
    // For a basic example, you can hardcode a valid Aadhar and phone number.
    const validAadhar = "123456789012"; 
    const validPhoneNumber = "1234567890";
    
    if (aadharNumber === validAadhar && phoneNumber === validPhoneNumber) {
        // Redirect to the main voting page or do further processing
        window.location.href = "main_voting_page.html";
    } else {
        document.getElementById("errorMessage").textContent = "Incorrect credentials. Please try again.";
    }
});
document.addEventListener("DOMContentLoaded", function () {
    const politicianResult = document.getElementById("politician-result");
    const partyRadios = document.querySelectorAll('input[name="party"]');
    const submitButton = document.getElementById("submit");

    // Handle radio button change event
    partyRadios.forEach((radio) => {
        radio.addEventListener("change", function () {
            if (radio.checked) {
                const selectedParty = radio.value;
                // You can add more logic to map parties to politicians
                let politician;
                switch (selectedParty) {
                    case "TDP":
                        politician = "Ramesh Reddy";
                        break;
                    case "YSRCP":
                        politician = "Suresh Reddy";
                        break;
                    case "BJP":
                        politician = "Venkatarao";
                        break;
                    default:
                        politician = "Unknown";
                        break;
                }
                politicianResult.textContent = `Selected Politician: ${selectedParty} - ${politician}`;
            }
        });
    });

    // Handle submit button click event (you can customize this)
    submitButton.addEventListener("click", function () {
        // Handle submit logic here
    });
});
const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
app.use(bodyParser.json());

// Database configuration
const db = mysql.createConnection({
    host: 'localhost',
    user: 'your_db_user',
    password: 'your_db_password',
    database: 'your_database',
});

// API endpoints for user registration, login, voting, and timer
// Implement user authentication, voting logic, and timer here

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
