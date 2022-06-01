public  class RankHandler {
   public string rankPrize(integer rank){
       string price ='';
       if( rank ==1){
           price ='Gold';
       }else if(rank==2){
           price = 'Silver';
       } else if(rank==3){
           price = 'Bronz';
        }else{
            if(rank<= 10)
                price = 'Top 10 certificate';
            else{
                price =' Participation certificate';
            }
        }    
       return price;
   }


    public string rankPrizeSwitch(integer rank){
        string prize = '';
        switch on rank {
            when 1 {
                prize= 'Gold';
            }
            when 2{
                prize= 'Silver';
            }
            when 3{
                prize='Bronz';
            }
            when 4,5,6,7,8,9,10{
                prize= 'Top 10';
            }
            when else {
                prize='Paerticipation certification';  
            }
        }
        return prize;  
    }
}