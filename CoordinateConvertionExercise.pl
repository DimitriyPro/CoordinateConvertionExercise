# Set server
my $server = 'http://rest.ensembl.org';
# Create a request
my $ext = '/map/human/GRCh38/X:25000..30000:1/GRCh37?';
# Get responce
my $response = $http->get($server.$ext, {
  headers => { 'Content-type' => 'application/json' }
});
# Handling errors
die "Failed!\n" unless $response->{success};
 
# Add modules
use JSON;
use Data::Dumper;
# Processing responce
if(length $response->{content}) {
  my $hash = decode_json($response->{content});
  local $Data::Dumper::Terse = 1;
  local $Data::Dumper::Indent = 1;
  print Dumper $hash;
  print "\n";
}