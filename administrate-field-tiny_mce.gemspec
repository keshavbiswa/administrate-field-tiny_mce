Gem::Specification.new do |spec|
  spec.name          = "administrate-field-tiny_mce"
  spec.version       = '0.0.1'
  spec.authors       = ["Keshav Biswa"]
  spec.email         = ["keshavbiswa21@gmail.com"]

  spec.summary       = %q{Administrate Plugin to add tinymce editor to administrate field.}
  spec.homepage      = "https://github.com/keshavbiswa/administrate-field-tiny_mce"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/keshavbiswa/administrate-field-tiny_mce"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'administrate', '< 1.0.0'
  spec.add_runtime_dependency 'rails', '>= 4.1'
  spec.add_runtime_dependency 'tinymce-rails', '>= 4.4.3'
end
