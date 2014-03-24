# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'pagantis/version'

Gem::Specification.new do |spec|
  spec.name        = 'pagantis-ruby'
  spec.version     = Pagantis::VERSION
  spec.platform    = Gem::Platform::RUBY

  spec.files         =  Dir['*'] + Dir['lib/*.rb'] + Dir['lib/pagantis/*.rb']
  spec.require_paths = ['lib']

  spec.authors       = ["\303\201lvaro Mart\303\255n Fraguas", "Alberto Molpeceres"]
  spec.email         = 'soporte.tpv@pagantis.com'
  spec.homepage      = 'http://github.com/pagantis/pagantis-ruby'
  spec.license       = 'MIT'
  spec.summary       = 'Ruby wrapper around Pagantis API with ActiveResource'

  spec.add_runtime_dependency 'activeresource', '~> 4.0'
end

