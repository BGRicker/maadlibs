# -*- encoding: utf-8 -*-
# stub: lyricfy 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "lyricfy".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Javier Hidalgo".freeze]
  s.date = "2013-05-30"
  s.description = "Song Lyrics for your Ruby apps".freeze
  s.email = ["hola@soyjavierhidalgo.com".freeze]
  s.homepage = "https://github.com/javichito/lyricfy".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Lyricfy lets you get song lyrics that you can use on your apps".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.3.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, ["= 1.8.0"])
      s.add_development_dependency(%q<vcr>.freeze, ["~> 2.4.0"])
    else
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.3.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, ["= 1.8.0"])
      s.add_dependency(%q<vcr>.freeze, ["~> 2.4.0"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.3.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, ["= 1.8.0"])
    s.add_dependency(%q<vcr>.freeze, ["~> 2.4.0"])
  end
end
