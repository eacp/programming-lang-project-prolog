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
const makeQuery = (income, period) => `payment(${income},${period}, Whithold, Deposit).`;


// Get the fields to be used later
const incomeField = document.getElementById('income');
const periodField = document.getElementById('frequency');
const resultsArea = document.getElementById('res');

// Function to grab the data and pass it to prolog
const calc = () => {
    // Get the data
    const income = incomeField.value;
    const period = periodField.value;
    // Make the query
    const q = makeQuery(income,period);
    // Execute the query
    console.log('Executing: ',q);
    session.query(q);
    // Tau Prolog requires this to be asyncronous
    session.answer((answer) => {
        console.log(answer);
        // Get the data from the answer
        const deposit = answer.links.Deposit.value;
        const tax = answer.links.Whithold.value;
        resultsArea.innerText = `Amount to deposit: $${deposit}, taxes to withold: $${tax}`;
        
    });
}


// Assign the calc lambda to button
document.getElementById('calcButton').onclick = calc;