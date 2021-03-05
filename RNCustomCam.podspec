require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name          = "RNCustomCam"
  s.version       = package['version']
  s.summary       = package['description']
  s.authors       = { "EasonLin" => "easonlex@gmail.com" }
  s.homepage      = "https://github.com/EasonLex/RNCustomCam#readme"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/EasonLex/RNCustomCam.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

end
