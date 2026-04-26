#Rubrica da terminale

#crea struttura rubrica
my %rubrica = ();

#funzione per pausa
sub pausa{
	print "permi invio per poter continuare ... \n";
	<STDIN>;
}
#stampa le opzioni 
while (1) {

system("cls");

print "--++---OPZIONI--++--- \n
	1.aggiungi contatto \n
	2.mostra contatti \n
	3.cerca contatto \n
	4.esci \n
	Scelta:>>  ";

#attnedi input utente
$scelta = <STDIN>;
chomp($scelta);

#analizza l'input utente ed esegui la funzione richeista
if ($scelta == 1) {
	print "aggiungiamo il contatto ... \n";
	print "dimmi il nome: ";
	$nome = <STDIN>;
	chomp($nome);
	print "dimmi il tel: ";
	$tel = <STDIN>;
	$rubrica{$nome} = $tel;
	print "contatto aggiunto con successo !!\n";
	pausa();}
elsif ($scelta == 2) {
	print "ecco i contatti: \n";
	
	foreach my $name (keys %rubrica) {
		print "$nome -->> $rubrica{$nome} \n";
		pausa();
	}

}
elsif ($scelta == 3) {
	print "cerca nome contatto: \n" ;
	my $nome = <STDIN>;
	chomp($nome);
	if (exists $rubrica{$nome}) {print "trovato: $nome ->> $rubrica{$nome} \n";
	pausa();}
	else {print "non trovato";
	pausa();
	}
}
elsif ($scelta == 4) {
	print "stai uscendo........";		
	last;
}
else {print "scelta non valida \n";
      pausa();}

}

