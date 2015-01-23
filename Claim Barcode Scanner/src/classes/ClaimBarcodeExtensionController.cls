global class ClaimBarcodeExtensionController {

    // not really using these lines now since this is being used as a global
    //Claim__c myClaim; 
    //ApexPages.StandardController myStdController; 
    public ClaimBarcodeExtensionController(ApexPages.StandardController controller){
        //myStdController = controller; 
        //myClaim = (Claim__c) controller.getRecord();
    }
    
    @RemoteAction
    global static Claim__c updateBarcode(id claimid, string barcodevalue){
        Claim__c thisClaim = [SELECT Name, Tracking_Number__c from Claim__c where Id = :claimid];
        thisClaim.Tracking_Number__c = barcodevalue;
        update thisClaim;
        return thisClaim;
    }
}