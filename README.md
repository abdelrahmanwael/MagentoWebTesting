# Magento Web Application Testing
This project demonstrates the automation testing of a web application using the Page Object Model (POM) with Robot Framework and Selenium Library. The project includes test scenarios that cover different functionalities of the application and are tagged accordingly for better test management.

## Prerequisites
To run this project, ensure you have the following installed:

Python
Robot Framework
Selenium Library
Chrome browser
## Setup
Clone the repository to your local machine.
Open the project in your preferred IDE (e.g., PyCharm).
Install the required dependencies by running the command: pip install -r requirements.txt.
## Configuration
Update the chromedriver path in the config.robot file to match the location of the ChromeDriver executable on your machine.

## Test Scenarios
### Scenario 1 [P1] - Registering a new account
Objective: As a guest user, I want to register a new account to the application so that I can log in and perform actions.

### Steps:

Navigate to the web application.
Click on the "Sign In" button.
Click on the "Create an Account" button.
Fill in the registration form with valid details.
Submit the form.
Verify that the account is successfully registered.
Log out from the application.
Verify that the user can log in successfully with the registered account.
Scenario 2 [P2] - Checking out an order from the cart
Objective: As a user, I want to navigate to my cart, complete the payment details, and check out the order.

### Steps:

Navigate to the web application.
Sign in to the application with valid credentials.
Search for and add items to the cart.
Go to the cart.
Complete the payment details.
Proceed with the checkout process.
Verify that the order is successfully placed.
### Scenario 3 [P3] - Searching for a keyword and asserting the results
Objective: As a user, I want to log in to the application and search for a specific keyword ("Nike"), then assert the search results.

### Steps:

Navigate to the web application.
Sign in to the application with valid credentials.
Search for the keyword "Nike".
Verify that the search results contain the expected items.
Test Execution
To execute the test scenarios, follow these steps:

Open a terminal and navigate to the project directory.

Run the following command to execute the smoke test scenarios:

``robot --include Smoke TestCases\testCases.robot``

Run the following command to execute the functional test scenarios:

``robot --include Functional TestCases\testCases.robot``

## Test Reports
After executing the test scenarios, the test reports will be generated in the results directory. Open the HTML files in a web browser to view the detailed reports.

## Notes
Make sure to have an active internet connection during test execution.
The test scenarios are tagged with "Smoke" and "Functional" for better organization and execution control.
Additional test scenarios and enhancements can be added to the project based on specific requirements.
