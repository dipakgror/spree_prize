# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_prize'
  s.version     = '2.2.2'
  s.summary     = 'Giveaways for Spree'
  s.description = 'Add a timed lottery/giveaway to Spree. Candidates submit their email to enter each giveaway.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Boombotix'
  # s.email     = 'you@example.com'
  s.homepage  = 'http://www.boombotix.com'

  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.2.2'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'sqlite3'
end
