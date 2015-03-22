package Perinci::Examples::Invalid;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

# package metadata
$SPEC{':package'} = {
    v => 1.1,
    summary => 'Example for invalid Rinci metadata',
};

$SPEC{':foo'} = {
    v => 1.1,
    summary => 'Unknown entity',
};

$SPEC{v_10} = {
    summary => 'This Rinci metadata does not have v=>1.1 (defaults to 1.0)',
    description => <<'_',

Currently only version 1.1 is recognized/allowed. Version 1.0 (2011) is from
earlier Sub::Spec era and no longer supported.

_
};
sub v_10 {}

$SPEC{unsupported_v} = {
    v => 9.9,
    summary => 'This Rinci metadata has an unknown version',
    description => <<'_',

Currently only version 1.1 is recognized/allowed. Version 1.0 (2011) is from
earlier Sub::Spec era and no longer supported.

_
};
sub unsupported_v {}

$SPEC{'$x'} = {
    v => 1.1,
    summary => 'Unknown variable',
};

$SPEC{'$x y'} = {
    v => 1.1,
    summary => 'Invalid variable name',
};

$SPEC{'unknown_func'} = {
    v => 1.1,
    summary => 'Metadata for a non-existing function',
};

$SPEC{'func with space'} = {
    v => 1.1,
    summary => 'Invalid function name',
};

$SPEC{'unknown_prop'} = {
    v => 1.1,
    summary => 'This function metadata contains unknown property',
    foo => 1,
};

# XXX invalid value for a known property

1;
# ABSTRACT:

=head1 DESCRIPTION

This module contains various examples of invalid Rinci metadata.


=head1 SEE ALSO

L<Perinci>

L<Perinci::Examples>
