#Esercizio sulle transazioni

#transazioni disponibili utxo portafoglio 1
my @portafoglio1 = ("bob->julia 3€", "bob-> erika 5€");

#transazioni portafoglio 2
my @portafoglio2 = ();

#funzione di trasferimento

sub trasf {

	push(@portafoglio2, $portafoglio1[1]);
	splice(@portafoglio1, 1, 1);
	}

trasf();
print "i due portafoglio sono: \n @portafoglio1 e \n @portafoglio2 \n";
