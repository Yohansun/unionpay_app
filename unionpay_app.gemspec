# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unionpay_app/version'

Gem::Specification.new do |spec|
  spec.name          = "unionpay_app"
  spec.version       = UnionpayApp::VERSION
  spec.authors       = ["Yohansun"]
  spec.email         = ["yohansun@qq.com"]
  spec.description   = %q{An unofficial simple unionpay_app gem}
  spec.summary       = %q{An unofficial simple unionpay_app gem}
  spec.homepage      = "https://github.com/Yohansun/unionpay_app"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fakeweb"
end