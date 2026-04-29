#programma che legge i tasti
use strict;
use warnings;
use Term::ReadKey;

#attiviamo la modalità interattiva dell editor
ReadMode('cbreak');

print "---benvenuto premi un tasto o q  per uscire--- \n ";

#ciclo che legge il carattere premuto
while (1) {
#se il tasto esiste controllando con if vediamo se preme 'q' per uscire	
    my $tasto = ReadKey(0);
    if (defined $tasto) { last if $tasto eq 'q';

#poi otteniamo il codice numerico del tasto ASCII
    my $codice = ord($tasto);
    print "hai premuto '$tasto' con codice ASCII $codice \n";
    
    }
}

#rispristiniamo l'input normale del terminal
ReadMode('Normal');
print "\n terminale rispristinato \n";

