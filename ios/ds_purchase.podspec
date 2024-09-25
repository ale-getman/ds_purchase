#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ds_purchase.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ds_purchase'
  s.version          = '0.0.3'
  s.summary          = 'Purchase SectDev components for Flutter projects (https://sect.dev/). Currently supports Adapty only'
  s.description      = <<-DESC
Purchase SectDev components for Flutter projects (https://sect.dev/). Currently supports Adapty only
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FBSDKCoreKit'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
