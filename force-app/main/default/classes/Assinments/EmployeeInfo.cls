public  class EmployeeInfo {
     public static String showInfo(Integer empNumber) {
       String  empName='';
       Map<Integer, string> empMap = new Map<Integer, string>();
       empMap.put(001, 'Alex');
       empMap.put(002, 'Josh');
       empMap.put(000,'Jennifer');
       empMap.put(005, 'Brandi');
       if (empMap.containsKey(empNumber) ) {
           empName= empMap.get(empNumber);   
       }else{
           empName='Employee does not exist!!';
       }

       return empName; 
    }
   
}
