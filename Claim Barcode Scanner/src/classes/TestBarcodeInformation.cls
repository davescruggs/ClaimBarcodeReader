@IsTest
public class TestBarcodeInformation {
    static testMethod void testBarcodeUpload(){
        Claim__c testClaim = new Claim__c();
        insert testClaim;
		Test.startTest();
        Claim__c result = ClaimBarcodeExtensionController.updateBarcode(testClaim.Id, 'ABCDEF123');
		Test.stopTest();
        System.assert(result.Tracking_Number__c == 'ABCDEF123');
    }
    
    
    static testMethod void testBarcodeExtController(){
        Claim__c testClaim = new Claim__c();
        insert testClaim;
        
		Test.startTest();
        Claim__c result = ClaimBarcodeExtensionController.updateBarcode(testClaim.Id, 'ABCDEF123');
		Test.stopTest();
        System.assert(result.Tracking_Number__c == 'ABCDEF123');
    }
}