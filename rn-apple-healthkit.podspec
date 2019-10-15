require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "hupper-tech"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/hupper-tech/rn-apple-healthkit.git" }
  s.source_files  = "RCTAppleHealthKit/*.{h,m}"

  s.dependency 'React'
end
