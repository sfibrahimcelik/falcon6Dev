Integer a = 15;
Integer b = 21;
Integer bSayi = math.max(a, b);
System.debug('Buyuk sayi= '+bSayi);
Integer kSayi = math.min(a, b);
System.debug('Kucuk sayi= '+kSayi);

Decimal c = 23.93455;
Decimal floor = math.floor(c);
System.debug('Floor= '+floor);

Decimal e = math.round(c);
System.debug('Round = '+e);

Decimal randomNum= math.floor(math.random()*10+1);
System.debug(randomNum);
Decimal randomNum2= math.ceil(math.random()*10);
System.debug(randomNum2);


TurkishLesson5.listMetot();