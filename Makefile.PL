use 5.010001;

use strict;
use warnings;

use ExtUtils::MakeMaker;

# Pod::Simple 3.09 first shipped with Perl 5.11.2
WriteMakefile(
  NAME         => 'Mojolicious',
  VERSION_FROM => 'lib/Mojolicious.pm',
  ABSTRACT     => 'Real-time web framework',
  AUTHOR       => 'Sebastian Riedel <sri@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    requires  => {perl => '5.010001'},
    resources => {
      homepage    => 'http://mojolicio.us',
      license     => 'http://www.opensource.org/licenses/artistic-license-2.0',
      MailingList => 'http://groups.google.com/group/mojolicious',
      repository  => 'http://github.com/kraih/mojo',
      bugtracker  => 'http://github.com/kraih/mojo/issues'
    },
    no_index => {directory => ['t']}
  },
  PREREQ_PM => {'Pod::Simple' => '3.09'},
  EXE_FILES => ['script/hypnotoad', 'script/mojo', 'script/morbo'],
  test => {TESTS => 't/*.t t/*/*.t'}
);
