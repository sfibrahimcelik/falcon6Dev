public class StringDemoClass{
    public void stringMethod1(){
       string sessionDescription=' Learning string methods in apex language';
       integer lengthOfStr= sessionDescription.length();
       system.debug('length of string is= '+lengthOfStr);
       string sessionDescriptionInCaps= sessionDescription.toUpperCase();
       system.debug('in caps= '+sessionDescriptionInCaps);
       system.debug('orginal string= '+sessionDescriptionInCaps);
       boolean containsApex= sessionDescription.contains('apex');
       system.debug('has apex? '+containsApex);
       boolean containsSalesforce= sessionDescription.contains('salesforce');
       system.debug('has salesforce? '+containsSalesforce);
       boolean containsAPEX2=sessionDescription.containsIgnoreCase('APEX');
       system.debug('has APEX? '+containsAPEX2);
       string apexx= 'apex';
       string ap= 'APEXX';
       boolean apexCheck=apexx.equals(ap);
       system.debug('apex check '+ apexCheck);
       

    }
}