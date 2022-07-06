public  class SetDemo {
    public static void citySet(){
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        System.debug('set of cities '+cities);

    }
     public static void randomInteger() {
         Set<integer> setInteger = new Set<Integer>();
             setInteger.add(10);
             setInteger.add(15);
             setInteger.add(21);
             setInteger.add(15);
             setInteger.add(10);
             setInteger.add(15);
             System.debug('set of random integer '+setInteger);
    }
    public static set<integer>  setFromList(list<integer> intList) {
        Set<integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;

    }
    public static set<string> capitalizeSet (set<string> setString) {
        Set<string> upperCaseSet = new Set<string>();
        for (string eachString : setString) {
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
        }
        return upperCaseSet;
    }

}