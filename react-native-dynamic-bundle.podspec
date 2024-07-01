require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-dynamic-bundle"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'mauritsd'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/mauritsd/react-native-dynamic-bundle", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React-Core"
end
