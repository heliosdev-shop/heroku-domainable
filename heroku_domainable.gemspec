$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "heroku_domainable/version"
# require 'byebug'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "heroku-domainable"
  spec.version     = IPBlockade::VERSION
  spec.license     = 'MIT'
  spec.date        = Time.now.strftime("%Y-%m-%d")
  spec.summary     = "A Rails engine to manage custom Heroku domains"
  spec.description = ""
  spec.authors     = ["Jason Fleetwood-Boldt"]
  spec.email       = 'jason@heliosdev.shop'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)}) || f.match(%r{(gemspec|gem)$}) }
    files
  end

  spec.add_runtime_dependency "rails",  '> 5.1', '<= 7.0.0'
  spec.homepage    = ''
  spec.metadata    = { "source_code_uri" => "https://github.com/jasonfb/heroku-domainable"}


  spec.post_install_message = <<~MSG
    ---------------------------------------------
    Heroku Domainable
    ---------------------------------------------
  MSG
end
