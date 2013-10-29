# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ofx-parser/version'

Gem::Specification.new do |spec|
  spec.name          = "ofx-parser"
  spec.version       = OfxParser::VERSION
  spec.authors       = ["Andrew A. Smith"]
  spec.email         = ["andy@tinnedfruit.org"]
  spec.description   = %q{== DESCRIPTION:\n\nofx-parser is a ruby library to parse a realistic subset of the lengthy OFX 1.x specification.\n\n== FEATURES/PROBLEMS:\n\n* Reads OFX responses - i.e. those downloaded from financial institutions and\n  puts it into a usable object graph.\n* Supports the 3 main message sets: banking, credit card and investment\n  accounts, as well as the required 'sign on' set.\n* Knows about SIC codes - if your institution provides them.\n  See http://www.eeoc.gov/stats/jobpat/siccodes.html\n* Monetary amounts can be retrieved either as a raw string, or in pennies.\n* Supports OFX timestamps.}
  spec.summary       = %q{ofx-parser is a ruby library for parsing OFX 1.x data.}
  spec.homepage      = "http://ofx-parser.rubyforge.org/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "hpricot", ">= 0.6"
end
