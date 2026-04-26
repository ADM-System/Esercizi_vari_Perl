#Calcolo valore btc

print "Quant BTC possiedi? >> ";

#numero btc utente
my $num_btc = <STDIN>;
chomp($num_btc);

#valore attuale 1 btc
my $btc_attual = 60_000; 

#calcolo valore totale 
my $tot = $btc_attual * $num_btc;
print "hai in totale questi btc: $tot \n";
