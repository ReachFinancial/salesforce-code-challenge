![Reach Financial Logo](./assets/images/reach-financial-logo.svg) 
# Preparation Message for Candidates

This technical interview consists of two parts:

1. A take-home assignment where you will build a basic application in Salesforce

2. A live pairing session where you'll walk us through your take-home submission and also extend that logic.

You will be developing a rough Salesforce Lightning Web Components-based application that reflects the business problems we solve at Reach. During both parts, you will be creating user experiences within a Salesforce Developer environment that we provide, which includes a predefined data model.

Please ensure you have a Github account ready as you'll be committing code to a repository. The take-home portion should take about 90 minutes to complete.

## Part 1: Take-Home Assignment

Reach Financial is a personal lender that offers prospective borrowers the ability to get loans for debt consolidation (e.g., paying off multiple credit cards with a single payment).

To apply for a loan, borrowers must provide specific personal information, which is then used to determine what pricing (e.g., interest rate, payment term, and total consolidation amount) they qualify for. Once pricing is established, the borrower can make small configurations to the loan.

For the take-home portion you will build a rudimentary prototype using a Salesforce scratch org that demonstrates the following:

### Setup

1. Extract the provided sf-coding-challenge.zip file to your local machine.

2. Open the extracted folder as a Salesforce project in your preferred IDE (e.g., VS Code with Salesforce extensions). The IDE should recognize the project structure.

3. Using the provided credentials, authorize the Salesforce CLI to connect to the provided scratch org.

4. (Optional but Recommended) Initialize a local Git repository within the project folder to track your changes effectively.

### Implementation

1. Implement the initial application data collection process where (can be done in either LWC or Apex, at your discretion): 

    * Borrowers can provide the necessary information:

        * Name

        * Address

        * Email

        * Phone

        * SSN

        * Total Loan Amount Requested

        * Number of Active Credit Cards or Lines of Credit

    * Capture applicants' information as early as possible in the process to enable follow-up if they abandon the application.

    * Implement the following application validation logic:

        * If the loan amount requested is less than $10,000 or greater than $50,000, deny the application by displaying a simple error message and disabling the submit button. 

        * If the number of credit lines is > 50, deny the application.

    * Creating a clear presentation of the selected offer to the borrower, including:

        * Total loan amount requested

        * Interest rate { Use a hardcoded value: 19.5% }

        * Term (length of the loan in months) { Use a hardcoded value: 36 months }

        * Monthly payment { Calculate using the Loan Amount Requested and the hardcoded Interest Rate/Term }

2. Implement the final step where borrowers who accept terms can:

    * Upload an identity document

    * Submit their application

    * Receive confirmation of a 24-hour review turnaround.

    * No special automation for the upload is required; we are only looking to upload and store a document.

### Submission

1. Ensure all your code (Apex, LWC, Flow modifications, etc.) and metadata changes are saved locally.

2. Deploy the complete project metadata from your local environment to the provided scratch org. Verify that your changes are active and the application functions as expected within the scratch org.

3. Notify your HR contact once you have successfully deployed your solution to the scratch org. We will check the org directly after the submission deadline.

## What We're Looking For

* Are you able to work well between Flows, LWC, and Apex and to use the right dev tool for the right use case?

* Are you able to write clean LWC front-end code that's fit for a consumer in a B2C context?

* Are you able to approach unit, integration, and end-to-end testing on the platform in step with modern engineering best practices?

## Resources Provided

To help you focus on the requirements, the zipped project and the pre-configured scratch org include:

* The Account object has been set up with Person Accounts

* A new custom Application__c object has been created to act as the primary record for the prospective borrower's application

* An optional Apex class called GetLoanOffer.cls that you may use for loan validation and calculation logic if you prefer an Apex-based approach.

* A core Flow to use for the application process called Application Process - Reach Code Challenge

* An LWC called applicationProcessOfferPresentation to use for displaying offers
