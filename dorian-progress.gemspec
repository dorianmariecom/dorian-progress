# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-progress"
  s.version = File.read("VERSION").strip
  s.summary = "progress bar"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = %w[
    lib/dorian-progress.rb
    lib/dorian/progress.rb
    bin/progress
    VERSION
  ]
  s.executables << "progress"
  s.homepage = "https://github.com/dorianmariecom/dorian-progress"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "ruby-progressbar"
  s.required_ruby_version = "3.3.4"
end
