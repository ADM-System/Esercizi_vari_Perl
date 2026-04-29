#Programma per la stampa in varie posizioni dello schermo
use strict;
use warnings;
use Term::ReadKey;

$| = 1;
ReadMode('cbreak');

#pulizia iniziale dello schermo con posizione del cursore
print "\e[2J \e[H";
print "---lezione teletrasporto testo---";
print "premi un tasto epr far saltare il cursore";
ReadKey(0);

#primo salto
print "\e[5;40H"; print "sono qui"; ReadKey(0);

#secondo salto
print "\e[30;2H"; print "adesso qua"; ReadKey(0);

#terzo salto
print "\e[10;10H"; print "infine qua"; ReadKey(0);

#puliamo lo schemro prima di uscire
ReadMode(0);
print "\e[2J \e[H";
