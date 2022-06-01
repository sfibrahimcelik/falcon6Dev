map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dolar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupes');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
System.debug('map of country currenct+ '+mapCntCurrency);

String IndiaCurrency = mapCntCurrency.get('India');
String TurkeyCurrency = mapCntCurrency.get('Turkey');
system.debug(IndiaCurrency+' is India currency ');
system.debug(TurkeyCurrency+' is Turkey currency');

Set<string> countrySet = mapCntCurrency.keySet();
system.debug('Countries in map '+countrySet);
List<string> currencyList = mapCntCurrency.values();
system.debug('Currencies in map '+currencyList);


for( string eachKey: countrySet){
   
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'Country is '+eachKey+ ' its currency is '+ eachCurrency;
    system.debug(printString);
    
  


}