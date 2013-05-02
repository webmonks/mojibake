gem 'rjack-tarpit', '~> 2.0'
require 'rjack-tarpit/spec'

RJack::TarPit.specify do |s|
  require 'mojibake/base'

  s.version = Mojibake::VERSION

  s.add_developer 'David Kellum', 'dek-oss@gravitext.com'
  s.add_developer 'Maciej Kowalski', 'maciej33kowalski@gmail.com'

  s.maven_strategy = :no_assembly

  s.depend 'json', '~> 1.6.1'
  s.depend 'minitest', '~> 2.3'
end
