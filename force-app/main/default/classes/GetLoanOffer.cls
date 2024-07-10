public with sharing class GetLoanOffer {

    /*

    During the application process, the borrower should be presented with pricing that is pulled directly from this external API:

    https://raw.githubusercontent.com/ReachFinancial/salesforce-code-challenge/main/assets/data/reach-sample-api-response.json

    Use this class as a starting point for your callout.

    * Consider how this will be triggered, and how the data will flow back to the rest of the process
    * Consider best practices when calling out to 3rd parties from within Salesforce

    */

    public GetLoanOffer() {
        //
    }

    @InvocableMethod(label='Get Offer' description='Grabs an offer from our off-platform offer engine.' category='Application')
    public static List<String> getLoanOfferFromOfferService() {
        return new List<String>();
    }
}