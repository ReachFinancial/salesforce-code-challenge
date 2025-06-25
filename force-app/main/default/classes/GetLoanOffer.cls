public with sharing class GetLoanOffer {

    public GetLoanOffer() {
        // Constructor logic can be added here if needed
    }

    @InvocableMethod(label='Get Offer' description='' category='Application')
    public static List<String> getLoanOfferFromOfferService() {
        return new List<String>();
    }
}