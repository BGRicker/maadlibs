# -*- encoding: utf-8 -*-
# stub: genius 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "genius".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Rogers".freeze]
  s.bindir = "exe".freeze
  s.date = "2015-07-03"
  s.description = "A Ruby client for the Genius API (<http://genius.com/developers>).".freeze
  s.email = ["tim@gocardless.com".freeze]
  s.homepage = "https://github.com/timrogers/genius".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "A Ruby client for the Genius API (<http://genius.com/developers>).".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.1.0"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 0.14.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.11.0"])
      s.add_development_dependency(%q<vcr>.freeze, ["~> 2.5.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.11.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<mocha>.freeze, ["~> 0.14.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.11.0"])
      s.add_dependency(%q<vcr>.freeze, ["~> 2.5.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
      s.add_dependency(%q<httparty>.freeze, ["~> 0.11.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.11.0"])
    s.add_dependency(%q<vcr>.freeze, ["~> 2.5.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.31.0"])
    s.add_dependency(%q<httparty>.freeze, ["~> 0.11.0"])
  end
end
