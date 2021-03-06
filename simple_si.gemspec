# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "simple_si"
  s.version     = '0.0.4'
  s.summary     = "Rubymotion gem to easily call Sumi-Interactive's SIAlertView"
  s.description = "Quickly call an SIAlertView in one line: SimpleSI.alert('Hello World!')"
  s.authors     = ["Forrest Grant"]
  s.email				= "forrest@forrestgrant.com"
  s.homepage		= "http://github.com/forrestgrant/simple_si"

  s.require_paths = ["lib"]
  s.files         = `git ls-files`.split($\)
end