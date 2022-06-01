public with sharing class TurkishLesson5 {
    public static void listMetot() {
        List<string> dersList = new List<string>();
        dersList.add('Turkce');
        dersList.add('fen');
        dersList.add('Beden');
        System.debug(dersList);
        System.debug(dersList.get(1));
        System.debug(dersList[2]); 
        System.debug(dersList.indexOf('fen'));
        System.debug(dersList.isEmpty());
        System.debug('eleman sayisisi= '+dersList.size());
        System.debug('resim var mi? '+dersList.contains('resim'));
        
        List<Integer> numList = new List<Integer>{23,7,4,44};
        numList.sort();
        System.debug('sort ile siralma= '+numList);
    }
}
