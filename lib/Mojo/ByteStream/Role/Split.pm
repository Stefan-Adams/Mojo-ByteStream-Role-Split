package Mojo::ByteStream::Role::Split;
use Role::Tiny;

use Mojo::Collection 'c';

sub split {
  my ($self, $pattern, $limit) = @_;
  return c(map { $self->new($_) } split $pattern, $$self, $limit//0);
}

1;
