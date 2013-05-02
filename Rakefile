# -*- ruby -*-

$LOAD_PATH << './lib'

require 'rubygems'
gem     'rjack-tarpit', '~> 1.4'
require 'rjack-tarpit'

require 'mojibake/base'

t = RJack::TarPit.new( 'mojibake', MojiBake::VERSION )

t.specify do |h|
  h.developer( 'David Kellum', 'dek-oss@gravitext.com' )

  h.testlib = :minitest
  h.extra_deps     += [ [ 'json',     '~> 1.6.1' ] ]
  h.extra_dev_deps += [ [ 'minitest', '~> 2.3'   ] ]

  h.url = 'http://github.com/maciejkowalski/mojibake'
end

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
