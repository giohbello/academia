@istest
private class LineItemTriggerHandleTest {
 
    @istest private static void testinsertProductLineItem(){
        Line_Item__c li = new Line_Item__c(
            Description__c='descripcion de prueba',
            Type__c='Medium');
        
        Test.startTest();
        insert li;
        Test.stopTest();
            
        Producto_Line_Item__c pli=[select ID,Description__c,Type__c from Producto_Line_Item__c
                                  where Line_Item__c=:li.id];
            
        System.assertEquals(pli.Description__c, li.Description__c, 'son iguales');
    }
       
}