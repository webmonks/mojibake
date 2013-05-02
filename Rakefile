# -*- ruby -*-

$LOAD_PATH << './lib'

require 'rubygems'
require 'mojibake/base'

# Version/date consistency checks:

task :check_history_version do
  t.test_line_match( 'History.rdoc', /^==/, / #{ t.version } / )
end
task :check_history_date do
  t.test_line_match( 'History.rdoc', /^==/, /\([0-9\-]+\)$/ )
end

task :gem  => [ :check_history_version  ]
task :tag  => [ :check_history_version, :check_history_date ]
task :push => [ :check_history_version, :check_history_date ]

t.define_tasks

desc "(Re-)generate config output files (requires 1.9)"
task :generate_config do
  if ( RUBY_VERSION.split( '.' ).map { |d| d.to_i } <=> [ 1, 9 ] ) >= 0
    require 'mojibake'
    mapper = MojiBake::Mapper.new
    open( "config/table.txt",  'w' ) { |fout| fout.puts( mapper.table ) }
    open( "config/table.json", 'w' ) { |fout| fout.puts( mapper.json  ) }
  else
    raise "Task generate_config requires Ruby 1.9 encoding support"
  end
end
