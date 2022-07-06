public  class ListSetMap {
    public static void practiceOne() {
        List<String> cityList = new List<String>{'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
        Integer size = cityList.size();
        System.debug('size of the list= '+cityList.size());
        Boolean isEmpty= cityList.isEmpty();
        System.debug('Is list empty? '+isEmpty);
        String seventhE = cityList.get(7);
        System.debug('Seventh element of list is '+seventhE);
        Set<string> setOfList = new Set<String>();
        setOfList.addAll(cityList);
        System.debug(' Set of city list is '+setOfList);
    }
    public static void practiceTwo(List<Integer> listInt) {
        Set<Integer> evenNum = new Set<Integer>();
        Set<Integer> oddNum = new Set<Integer>();
        for (Integer eachNum : listInt) {
            
            if (math.mod(eachNum, 2)==0) {
                evenNum.add(eachNum);
                
            } else {
                oddNum.add(eachNum);
                
                
            }
            
            
        }
        System.debug('Even numbers: '+evenNum);
        System.debug('Odd  numbers: '+oddNum);
    }
}