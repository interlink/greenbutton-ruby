Gem::Specification.new do |s|
  s.name        = 'greenbutton'
  s.version     = '0.0.1'
  s.date        = '2012-06-26'
  s.summary     = 'GreenButton Parser'
  s.description = 'GreenButton data parser for Ruby'
  s.authors     = ['Uday Verma']
  s.email       = 'uday.verma@ilinknet.com'
  s.files       = ["lib/greenbutton.rb", "lib/greenbutton/parser.rb"] +
    %w(LICENSE README.md)
  s.homepage    = 'http://www.github.com/interlink/greenbutton-ruby'

  s.add_development_dependency "rspec"
  s.require_path = 'lib'
end
