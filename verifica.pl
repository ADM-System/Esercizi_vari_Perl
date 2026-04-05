#esercizio con if

use strict;
use warnings;
print "immetti la tua eta': ";
my $eta = <STDIN>;
chomp $eta;

if ($eta >= 18) {
  print "sei maggiorenne";
}else {print "sei minorenne";
}

