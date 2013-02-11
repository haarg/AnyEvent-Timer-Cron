use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

WriteMakefile(
  NAME => 'AnyEvent::Timer::Cron',
  VERSION_FROM => 'lib/AnyEvent/Timer/Cron.pm',

  PREREQ_PM => {
    'Moo' => 1.000007,
    'AnyEvent' => 0,
    'Task::Weaken' => 0,
    'Safe::Isa' => 0,
    'DateTime' => 0,
    'DateTime::Event::Cron' => 0,
    'namespace::clean' => 0,
  },
  'BUILD_REQUIRES' => {
    'Test::More' => 0.94,
  },

  META_MERGE => {
    requires => {
      perl => '5.8',
    },
    dynamic_config => 0,
    resources => {
      repository => 'git://github.com/haarg/AnyEvent-Timer-Cron.git',
      homepage => 'http://github.com/haarg/AnyEvent-Timer-Cron',
    },
  },
);
