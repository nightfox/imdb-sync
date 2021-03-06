
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "imdb/sync/version"

Gem::Specification.new do |spec|
  spec.name = "imdb-sync"
  spec.version = Imdb::Sync::VERSION
  spec.authors = ["Anirvan Mandal"]
  spec.email = ["anirvan.mandal@gmail.com"]

  spec.summary = "Ruby gem to organize and fetch movie information from IMDB"
  spec.description = "Ruby gem to organize and fetch movie information from IMDB"
  spec.homepage = "https://github.com/nightfox/imdb-sync"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.54"
end
