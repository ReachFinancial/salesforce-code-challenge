![Reach Financial Logo](./assets/images/reach-financial-logo.svg) 
# Salesforce-code-challenge

Reach Financial is a personal lender that offers prospective borrowers the ability to get loans for debt consolidation (e.g., paying off multiple credit cards with a single payment).  

To apply for a loan, borrowers must provide some specific personal information, and then that information is used to determine what pricing (e.g., interest rate, payment term, and total consolidation amount) a particular borrower qualifies for. Once that pricing is established, the borrower can make small configurations to the loan (e.g., change the term in exchange for a higher interest rate). 

Build a very rudimentary prototype version using a Salesforce Developer org that allows you to demonstrate the following end-to-end scenario:

*   First, create a branch and push an initial commit to the main branch
    
*   Borrowers use their web browser or mobile device to apply for a loan
    
    *   Borrowers should be able to provide the necessary information to be qualified for a loan 
        
        *   Name 
        *   Address 
        *   Email 
        *   Phone 
        *   SSN 
        *   Total Loan Amount Requested 
        *   Number of Active Credit Cards or Lines of Credit 
            
    *   Based on those inputs (e.g., total loan consolidation amount and amount of credit cards or other types of loans), a basic offer (price) should be computed and presented 
        
        *   This price should include a total loan amount, an interest rate, a term, and a monthly payment based on the two 
            
            *   If the loan amount requested is less than $10,000 or greater than $50,000, deny the application 
            *   If the number of credit lines open is <10, a 36-month term and 10% interest applies 
            *   If the number of credit lines open is <50 and >10, a 24-month term and 20% interest applies 
            *   If the number of credit lines is >50, deny the application 
                
        *   This should be clearly presented to the borrower 
            
    *   Once the borrower has agreed to the terms, they are prompted to upload an identity document. The application is then submitted, and the borrower is informed of a 24-hour review turnaround. 
        
        *   No special automation for the upload is required. We are only looking to upload and store a document.
            
*   And, as a test of your comfort & prowess in writing Apex:  
        *   During the application process, the borrower should be presented with pricing that is pulled directly from this external API:
        *   [https://raw.githubusercontent.com/ReachFinancial/salesforce-code-challenge/main/assets/data/reach-sample-api-response.json](https://raw.githubusercontent.com/ReachFinancial/salesforce-code-challenge/main/assets/data/reach-sample-api-response.json "https://raw.githubusercontent.com/ReachFinancial/salesforce-code-challenge/main/assets/data/reach-sample-api-response.json")
    *   Consider how this will be triggered, and how the data will flow back to the rest of the process 
    *   Consider best practices when calling out to 3rd parties from within Salesforce
*   Update your branch with your changes if you haven’t already
    

We are looking for a few things specifically, so choose your time wisely:

*   Are you able to work well between Flows, LWC, and Apex and to use the right dev tool for the right use case?
*   Are you able to integrate Salesforce cleanly with an off-platform web service?
*   Are you able to write clean LWC front-end code that’s fit for a consumer in a B2C context?
*   Are you able to approach unit, integration, and end-to-end testing on the platform in step with modern engineering best practices?
    

To help you focus on the above, we’ve set up a few basic constructs to work from in the this repo that you can fork and work from:

*   The Account object has been set up with Person Accounts
*   A new custom `Application__c` object has been created to act as the primary record for the prospective borrower’s application
*   We’ve created a core Apex class with an invocable action called `getLoanOffer.cls` and its pair test class to give you a place to start.
*   We’ve created a core Flow to use for the application process called `Reach Application Process`
*   We’ve created an LWC called `applicationProcessOfferPresentation` to use for displaying the offer retrieved from the external API
