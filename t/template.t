#!perl

use Cwd;
use File::Temp;
use File::Spec::Functions qw[ catfile ];
use File::Copy qw[ copy ];

my $pdir = getcwd;
my $dist = File::Temp->newdir( DIR => '.', CLEANUP => 1 )
   or die( "unable to create temp directory\n" );

chdir $dist or die( "unable to cd to $dist\n" );
copy ( catfile( $pdir, 't', '00_makefile.pl'), 'Makefile.PL' );

my $err = system( $^X, 'Makefile.PL' );

chdir $pdir;

exit $err;
