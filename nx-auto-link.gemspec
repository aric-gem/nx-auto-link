# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nx/version"

Gem::Specification.new do |spec|
  spec.name = "nx-auto-link"
  spec.version = Nx::AutoLink::VERSION
  spec.licenses = ["MIT"]
  spec.authors = ["afeiship"]
  spec.email = ["1290657123@qq.com"]

  spec.summary = %q{Auto link for next.}
  spec.description = %q{Auto link for next.}
  spec.homepage = "https://github.com/aric-gem/nx-auto-link"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_dependency "nokogiri"
  spec.add_development_dependency "bump"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.3", ">= 12.3.3"
end
