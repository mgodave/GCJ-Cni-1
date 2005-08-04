use Module::Build;

my $build = Module::Build->new
 ( module_name => 'GCJ::Cni',
   dist_version => '0.01',
   dist_author => 'David Rusek <rusekd@cpan.org>',
   dist_abstract => 'Perl Wrapper around GNU Compiler for Java CNI interface',
   license => 'perl',
   PL_files => { 'lib/GCJ/Cni.pm.PL' => [ 'lib/GCJ/Cni.pm', 'lib/GCJ/Cni.xs' ] },
   dynamic_config => 1,
   extra_compiler_flags => [ '-x', 'c++', '-include', 'gcj/cni.h' ],
   extra_linker_flags => [ '-lgcj' ],
   create_makefile_pl => 'passthrough',
 );

$build->create_build_script;
