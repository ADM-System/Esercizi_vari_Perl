#Programma programma con tasto 'q' per uscire
use strict;
use warnings;
use Term::ReadKey;

$| = 1;
my $testo = "";
ReadMode('cbreak');

print "\e[2J \e[H";
print "scrivi qualcosa o premi 'q' per uscire";
print "-------------------------------------- \n";

while(1) {
    my $tasto = ReadKey(0);
    my $codice = ord($tasto);
    
    last if $tasto eq 'q';
    
    if ($codice == 8) { chop($testo);}
    elsif ($codice >= 32 && $codice <= 126) {$testo .= $tasto;}
    print "\e[3;1H";
    print "\e[K";
    print $testo;

    ReadMode('normal');
    print "programma chiuso correttamente";
}

