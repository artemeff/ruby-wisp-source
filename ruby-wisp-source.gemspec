Gem::Specification.new do |s|
  s.name          = "ruby-wisp-source"
  s.version       = File.read 'VERSION'
  s.authors       = ["Yuri Artemev"]
  s.email         = ["i@artemeff.com"]
  s.description   = %q{TODO: Write a gem description}
  s.summary       = %q{Source code for wisp}
  s.homepage      = "https://github.com/artemeff/ruby-wisp-source"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/) + Dir["vendor/**/*"]
  s.require_paths = ["lib"]
end
