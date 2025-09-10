# -*- encoding: utf-8 -*-
# stub: schema_to_scaffold 0.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "schema_to_scaffold".freeze
  s.version = "0.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jo\u00E3o Soares".freeze, "Humberto Pinto".freeze]
  s.date = "2022-05-18"
  s.description = "  Command line app which parses a schema.rb file obtained from your rails repo or by running rake:schema:dump\n".freeze
  s.email = ["jsoaresgeral@gmail.com".freeze, "hlsp999@gmail.com".freeze]
  s.executables = ["scaffold".freeze]
  s.files = ["bin/scaffold".freeze]
  s.homepage = "http://github.com/frenesim/schema_to_scaffold".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "Generate rails scaffold script from a schema.rb file.".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, ["~> 7"])
  s.add_development_dependency(%q<byebug>.freeze, ["~> 11"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.21"])
end
