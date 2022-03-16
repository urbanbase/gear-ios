

Pod::Spec.new do |s|

  s.name         = "UBGear"
  s.version      = "0.0.4"
  s.summary      = "Urbanbase library that represented with API and Authentication."

  s.description  = <<-DESC
                     Hello, We are Urbanbase.
                     We invent the next world.
                     UBGear is the framework that helps to adapt easily your apps.
                   DESC

  s.homepage     = "https://urbanbase.com"
  s.license      = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.authors             = { 'Urbanbase Inc.' => 'dev@urbanbase.com' }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/urbanbase/gear-ios.git", :tag => "#{s.version}" }
  s.vendored_frameworks = 'UBGear.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'AFNetworking', '~>4.0.1'
  s.dependency 'AWSCognito'
  s.dependency 'AWSCognitoIdentityProvider'
  s.dependency 'AWSCognitoAuth'

  s.swift_version = "5.5"
end