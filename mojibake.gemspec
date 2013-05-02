# -*- encoding: utf-8 -*-

$LOAD_PATH << './lib'

gem 'rjack-tarpit', '~> 2.0'
require 'rubygems'
require 'rjack-tarpit/spec'
require 'mojibake/base'

RJack::TarPit.specify do |s|

  s.version = MojiBake::VERSION

  s.add_developer 'David Kellum', 'dek-oss@gravitext.com'
  s.add_developer 'Maciej Kowalski', 'maciej33kowalski@gmail.com'

  s.maven_strategy = :no_assembly

  s.depend 'json', '~> 1.6.1'
  s.depend 'minitest', '~> 2.3'
end
