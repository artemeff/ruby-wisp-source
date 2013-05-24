Gem::Specification.new do |s|
  s.name          = "ruby-wisp-source"
  s.version       = File.read 'VERSION'
  s.authors       = ["Yuri Artemev"]
  s.email         = ["i@artemeff.com"]
  s.description   = %q{Source code for Ruby Wisp compiler}
  s.summary       = %q{Source code for Wisp}
  s.homepage      = "https://github.com/artemeff/ruby-wisp-source"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/) + Dir["vendor/**/*"]
  s.require_paths = ["lib"]
end
