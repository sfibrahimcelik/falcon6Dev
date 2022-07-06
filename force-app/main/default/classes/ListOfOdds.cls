public  class ListOfOdds {
    public ListOfOdds() {
        System.debug('Welcom to numbers World');
    }
    public void oddList(Integer nm1, Integer nm2){  

        List<Integer> oddNumbers = new List<Integer>();
        for (Integer i=nm1; i <= nm2; i+2) {
           oddNumbers.add(i);
            System.debug(oddNumbers);
        }
            
    }
}