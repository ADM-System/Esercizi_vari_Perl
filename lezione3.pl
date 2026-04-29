#Lezione mini-editor
use strict;
use warnings;
use Term::ReadKey;

$| = 1;
#testo da salvare e scrivere cioè il nostro buffer
my $testo = ""; 
my $continua = 1;
ReadMode('cbreak');

while ($continua) {
    #DISEGNA
    print "\e[2J \e[H";
    print "digita o esc per uscire";
    print "-----------------------";
    print "$testo";
    
    #ASPETTA TASTO
    my $tasto = ReadKey(0);
    my $codice = ord($tasto);

    #AGGIORNA
    if ($codice == 27) {$continua = 0;}
    else{$testo .= $tasto;}

    ReadMode('normal');
    print "\n programma terminato \n";
}
