public  class TurkishLesson4 {
    public TurkishLesson4() {
        System.debug('Yeni obje olustu');
    }

    public static void metot1(){
        Integer sum = 0;
        Integer counter = 0;
        for (Integer i = 11; i < 30; i++) {
            counter++;
            sum +=i;
            //System.debug(counter);
            //System.debug(sum);
        }
        System.debug(counter);
        System.debug(sum);
        Integer ort = sum/counter;
        System.debug(ort);
    }
    public static void listMetot(){
        List<String> stringList= new List<String>();
        stringList.add('Ali');
        stringList.add('Veli');
        stringList.add('Hayriye');
        System.debug('ekle '+ stringList[0]);
        System.debug('ekle 2 '+ stringList.get(1));
    }
    public static void sumList() {
        list<integer> list1 = new list<integer>{1, 22, 33, 5, 7};
        Integer toplam = 0;
        for( integer eleman: list1){
            System.debug('eleman '+eleman);
            toplam+=eleman;
            System.debug('toplam = '+toplam);
        }
        
    }
}