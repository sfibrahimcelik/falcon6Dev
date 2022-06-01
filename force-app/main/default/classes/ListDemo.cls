public class ListDemo {
    public static string candidatesList(integer indx) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');//0
        listCandidates.add('Elon');//1
        listCandidates.add('Bill');//2
        listCandidates.add('Marc');//3
        system.debug('candidates are ' + listCandidates);
        string retrnString = '';
        if (indx >=0 && indx < listCandidates.size()) {
            retrnString = listCandidates[indx];
        } else {
            retrnString = 'No such value found';
        }
        return retrnString;
    }

    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        //get index 3 value.
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        
        system.debug('list of random integers ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
    }
    public static void allCats(){
        cat falconCat = new cat('Beyaz ', 'zeytin');
        cat aliCat = new cat('kivi ', 'rozi');

        list<cat> cats = new list<cat>();
        cats.add(falconCat);
        cats.add(aliCat);
        System.debug('all cats are '+cats);
    }

    public static void iterateIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(20);
        listInteger.add(25);
        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
            
        }
    }
}