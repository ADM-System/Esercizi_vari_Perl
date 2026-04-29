#script che scrive in varie coordinate dello schermo con comandi ANSI

use strict;
use warnings;
use Term::ReadKey;
#usiamo l'autoflush perchè senno colleziona prima tutti i print e poi stampa

$| = 1;

#prepariamo il terminale
ReadMode('cbreak');

#puliamo lo schermo
print "\e[2J \e[H";

#muoviamoci 
print "\e[5;5H";
print "ora sono qui";
#muoviamoci
print "\e[10;20H";
print "ora qua";

print "\e[15;2H";
print "adesso qui";

print "premi tasto uscita";

ReadKey(0);
ReadMode('normal');
