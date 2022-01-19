#
# Be sure to run `pod lib lint wujicFrameWorkDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MetaRTCFramework'
  s.version          = '0.1.3'
  s.summary          = 'MetaRTCFramework Release'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
         MetaRTCFramework ios  framework
                 DESC

  s.homepage         = 'https://github.com/jion-y/MetaRTCFramework_iOS.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'meta-rit' => 'jion-y' }
  s.source           = { :git => 'https://github.com/jion-y/MetaRTCFramework_iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

#  s.source_files = 'MetaRTCFramework/Classes/**/*'

  s.vendored_frameworks = 'MetaRTCFramework/*.{framework}'
  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  
  # s.resource_bundles = {
  #   'wujicFrameWorkDemo' => ['zfz_wujiframework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit','OpenGLES','Metal','SystemConfiguration','CoreTelephony','CoreAudio','AudioToolbox','GLKit','VideoToolbox'
  s.libraries = 'resolv','c++'
  # s.dependency 'AFNetworking', '~> 2.3'
end
