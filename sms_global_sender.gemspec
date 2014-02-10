Gem::Specification.new do |s|
  s.name        = 'sms_global_sender'
  s.version     = '0.0.3'
  s.date        = '2014-02-05'
  s.summary     = "Send sms through SMS gateway"
  s.description = "specific to smsglobal.com.au"
  s.authors     = ["Harry Gao"]
  s.email       = 'foxgaocn@gmail.com'
  s.files       = [".gitignore", "LICENSE", "sms_global_sender.gemspec", "README.md","lib/sms_sender.rb"]
  s.homepage    =
    'http://rubygems.org/gems/sms_global_sender'
  s.license     = 'MIT'
  s.test_files  = ["spec/sms_sender_spec.rb", "spec/spec_helper.rb"]

  s.add_dependency "httparty"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end