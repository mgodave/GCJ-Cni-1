use Cwd qw(abs_path cwd);

my $cwd = cwd();
my $i_file = $cwd . '/lib/GCJ/Cni.i';
`swig -c++ -perl -outdir $cwd/lib/GCJ/ -o $cwd/lib/GCJ/Cni.xs $i_file`
