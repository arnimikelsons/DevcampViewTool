
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devcamp_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool"
  spec.version       = DevcampViewTool::VERSION
  spec.authors       = ["Arni Mikelsons"]
  spec.email         = ["arni@northernvillage.com"]

  spec.summary       = %q{Add a copyright to bottom of app}
  spec.description   = %q{GEnerated HTML data for Rails Applications}
  spec.homepage      = "https://example.com"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
