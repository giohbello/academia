public class LineItemTriggerHandle {

    public static void insertProductLineItem(List<Line_Item__c>Items){
        Producto_Line_Item__c pli = new Producto_Line_Item__c();
        
        for(Line_Item__c li:Items) {
            pli.Description__c = li.Description__c;
            pli.Type__c = li.Type__c;
            pli.Line_Item__c = li.Id;
        }
        try{
            insert pli;
        }
        catch(Exception ex){
            System.debug(ex); }
    }
}