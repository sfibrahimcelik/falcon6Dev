Map<string, country_code__c> mapCC = country_code__c.getAll();
System.debug('Map of country code= '+mapCC);

for (string eachCountry : mapCC.keySet()) {
    System.debug('Country= '+eachCountry+ ',  code= '+mapCc.get(eachCountry).country_code__c);
}