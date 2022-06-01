AccountSchedulable aSche = new AccountSchedulable();
string cron ='0 0 13 * * ?';
system.schedule('Schedule acc job via cron', cron, aSche);