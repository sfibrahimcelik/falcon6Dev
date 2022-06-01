public  class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
        string batchName= 'Falcons';
        integer totalCandidates = 40;
        boolean isAdminCompleted= true;
        system.debug('batch name is ' + batchName);
        system.debug( 'total # of candidates: '+ totalCandidates);
        system.debug( 'admin complated? '+ isAdminCompleted);
        decimal decValue= 27.01;
        system.debug('Demical: ' +decValue);
        long longValue= 212323434211l;
        system.debug('Long: '+ longValue);
        Object obj= 'This is a string';
        Object obj2= 11;
        ID id1='0015j00000ccro0AAA';
        system.debug(obj);
        system.debug(obj2);
        system.debug(id1);

    
    }
}