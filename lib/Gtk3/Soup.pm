package Gtk3::Soup;
{
  $Gtk3::Soup = '0.001';
}

use warnings;
use strict;
use base 'Exporter';

use Glib::Object::Introspection;

# export nothing by default.
# export functions and constants by request.
our %EXPORT_TAGS = (
);
our @EXPORT_OK = map { @$_ } values %EXPORT_TAGS;
$EXPORT_TAGS{all} = \@EXPORT_OK;


sub import {
    my %setup = (
        basename  => 'Soup',
        version   => '2.4',
        package   => __PACKAGE__,
    );

    my @args;
    for (my $i = 0; $i < @_; ++$i) {
        my $arg = $_[$i];
        if (exists $setup{$arg}) {
            $setup{$arg} = $_[++$i];
        }
        else {
            push @args, $arg;
        }
    }

    Glib::Object::Introspection->setup(%setup);

    # Pretend that we're calling Exporter's import
    @_ = @args;
    goto &Exporter::import;
}

1;
