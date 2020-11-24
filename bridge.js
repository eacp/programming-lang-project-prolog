// Create a Prolog Session
const session = pl.create();

// Load the prolog script
session.consult("knowledge-base.pl", {
    success: () => {
        console.log("Yay");
    },
    error: (err) => {
        console.log("Something Happened:");
        console.log(err);
    }
});

// Functions to evaluate data

// Function to construct the prolog command
const makeQuery = (income, period, year) => `payment(${income},${period}, Whithold, Deposit,${year}).`;


// Get the fields to be used later
const incomeField = document.getElementById('income');
const periodField = document.getElementById('frequency');
const yearField   = document.getElementById('year');


const resultsArea = document.getElementById('res');

const queryFailMessage = "Error: There is no information available in the Knowledge Base to answer this quey. This is likely due to missing US Income Tax data for previous years";

// Function to grab the data and pass it to prolog
const calc = () => {
    // Get the data
    const income = incomeField.value;
    const period = periodField.value;
    const year = yearField.value;

    // Validate not empty
    if(!income || income == null || income.length == 0) {
        alert("Invalid input on Income");
        return;
    }

    // Make the query
    const q = makeQuery(income,period, year);
    // Execute the query
    console.log('Executing: ',q);
    session.query(q);
    // Tau Prolog requires this to be asyncronous
    session.answer((answer) => {
        console.log(answer);
        if(!answer) {
            // Query failed
            alert(queryFailMessage);
            return;
        }

        // Get the data from the answer
        const deposit = answer.links.Deposit.value;
        const tax = answer.links.Whithold.value;
        resultsArea.innerText = `Amount to deposit: $${deposit}, taxes to withold: $${tax}`;
        
    });
}


// Assign the calc lambda to button
document.getElementById('calcButton').onclick = calc;