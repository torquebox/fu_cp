require 'fileutils'
puts 'Setting up'
FileUtils.rm_rf( 'target' )
FileUtils.mkdir_p( 'target/dirA/' )
FileUtils.mkdir_p( 'target/dirB/' )
open( 'target/dirA/thefile', 'w' ) {|f|
  f.puts 'Contents of the file'
}
puts 'Copying'
FileUtils.cp( 'target/dirA/thefile', 'target/dirB/the_other_file' )
puts 'Copying harder'
FileUtils.cp( 'target/dirA/thefile', 'target/dirB/the_other_file' )
