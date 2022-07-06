public class StudentInfo {
    public StudentInfo(){
        System.debug('Welcome');
    } 
    public void listOfStudent(){
        List<string> stdntName= new List<string>();
        stdntName.add('Jose');
        stdntName.add('Gul');
        stdntName.add('Bekir');
        System.debug(stdntName);
    }
}