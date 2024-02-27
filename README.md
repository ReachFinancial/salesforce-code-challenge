![Reach Financial Logo](./assets/images/reach-financial-logo.svg) 
# Salesforce-code-challenge

#### Preparation Message for Candidates  
Reach Financial is a personal lender that offers prospective borrowers the ability to get loans for debt consolidation (e.g., paying off multiple credit cards with a single payment).  

To apply for a loan, borrowers must provide some specific personal information, and then that information is used to determine what pricing (e.g., interest rate, payment term, and total consolidation amount) a particular borrower qualifies for. Once that pricing is established, the borrower can make small configurations to the loan (e.g., change the term in exchange for a higher interest rate).  

Traditionally, this process required substantial amounts of paperwork and back-and-forth with agents on the phone using calculators, but the company is going through the process of digitizing this end-to-end experience. 
<hr>

#### The desired overall operational and consumer experience (use cases) follows: 

1. Borrowers use their web browser or mobile device to apply for a loan via a public digital experience (website) 
    - Borrowers should be able to provide the necessary information to be qualified for a loan
        - Name 
        - Address 
        - Email 
        - Phone 
        - SSN 
        - Total Loan Amount Requested 
        - Number of Active Credit Cards or Lines of Credit 

    - Based on those inputs (e.g., total loan consolidation amount and amount of credit cards or other types of loans), a basic offer (price) should be computed and presented 
        - This price should include a total loan amount, an interest rate, a term, and a monthly payment based on the two 
            1. If the loan amount requested is less than $10,000 or greater than $50,000, deny the application 
            2.  If the number of credit lines open is <10, a 36-month term and 10% interest applies 
            3.  If the number of credit lines open is <50 and >10, a 24-month term and 20% interest applies 
            4.  If the number of credit lines is >50, deny the application 

        - This should be clearly presented to the borrower 

    - Once the borrower has agreed to the terms, they are prompted to upload an identity document. The application is then submitted, and the borrower is informed of a 24-hour review turnaround.<br>
    __*(No special automation for the upload is required)*__

2. Internal verification agents should be able to run applications through a structured process. 

    - Once the application is submitted, an internal process should kick-off for the verifications team members within the company 
        - Agents can easily review the application and see only the data points relevant to them with a clear, easy-to-follow organizational display structure. 
        - Agents can review any attachments as well as the terms of the loan. 
        - Agents can collaborate internally on the loan to ensure that it is up to snuff, flagging one another for feedback in context if required. 
        - Agents can move the loan through a standard process: 
            1. Application Submitted 
            2. Initial Review
            3. Fraud Check 
            4. Final Approval 
            5. Approved 

    - When the application is moved to Approved, the borrower is automatically emailed with the good news. 
3. Operational Leadership can analyze the overarching process and report on… 
    - Applications submitted over time 
    - General elapsed time from the application submitted to approved 
    - Applications in each given status 
4. And, as a test of your comfort & prowess in writing Apex:  
    - During the application process, the borrower should be presented with pricing that is pulled directly from this [External API](https://raw.githubusercontent.com/ReachFinancial/salesforce-code-challenge/main/assets/data/reach-sample-api-response.json).
    - Consider how this will be triggered, and how the data will flow back to the rest of the process 
    - Consider best practices when calling out to 3rd parties from within Salesforce 
<hr>

### Your assignment is as follows: 

1. **Sketch out in a diagram an architecture that uses Salesforce Platform’s capabilities to realize an end-to-end digital experience for the above process**
    - Describe which Salesforce capabilities you would use for which parts of the use cases 
    - Provide a summary of key considerations for the future:  
        - What governor limits or other architectural constraints that Salesforce imposes may become an issue in the future? Why?  
        - What data permission structures should you keep in mind or potentially consider?  
        - How would you manage subsequent changes to your solution?  

2. **Build a very rudimentary prototype version using a [Salesforce Developer Org](https://developer.salesforce.com/signup) that allows you to demonstrate the end-to-end scenario**
    - Keep any of the logic engines (e.g., the pricing) hard-coded; we do not expect you to build any heavy-duty application logic as part of this 
    - Don’t worry about making the UI pretty beyond what’s easily configurable 
    - Don’t worry about access control, data sharing, security, or any other more complex configuration work; you can talk about these aspects 

<hr>

### Additional Coaching

<u>*__We do not expect candidates to spend more than 2 hours in total on this__*</u>, and we’re not expecting a prod-ready implementation — just a basic demo with some of the key functionality stubbed out to demonstrate how you would build this in more detail. 

<u>*__We do expect candidates to use this as an opportunity to highlight their developer workflow__*</u>, and we're looking to get a feel for how you will be working in the real world both as an SF dev but also one on the team.

<br /><br />
