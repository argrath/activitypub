use strict;
use warnings;

open my $fr, '<', 'omegat/target/index.html' or die "$@";

open my $fw, '>', 'docs/index.html' or die "$@";

my $f = 0;

while(<$fr>){
    s@&apos;@'@g;
    s@<link rel="canonical" href="https://www.w3.org/TR/activitypub/">@<link rel="canonical" href="https://argrath.github.io/activitypub/">@;
    print $fw $_;
}

close $fr;
close $fw;
