#
# Be sure to run `pod lib lint wujicFrameWorkDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MetaRTCFramework'
  s.version          = '0.2.1'
  s.summary          = 'MetaRTCFramework Release'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
         MetaRTCFramework ios  framework
                 DESC

  s.homepage         = 'https://www.wuji.co/'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'meta-rit' => 'jion-y' }
  s.source           = { :http => 'https://download.wuji.co/sdk/release/iOS/Meta_Native_SDK_for_iOS_v2_0_3_1_FULL.zip',:type => 'zip'}


  s.ios.deployment_target = '10.0'


  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.frameworks = 'UIKit', 'MapKit','OpenGLES','Metal','SystemConfiguration','CoreTelephony','CoreAudio','AudioToolbox','GLKit','VideoToolbox'
  s.libraries = 'resolv','c++'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.default_subspec = 'MetaRTCKit'
  s.license      = { :type => 'Proprietary',
              :text => <<-LICENSE
                  copyright 2019 wuji Ltd. All rights reserved.
                  LICENSE
               }

   s.subspec 'MetaRTCKit' do |kit|
       kit.vendored_frameworks = 'MetaRTCKit/*.framework'
    end
end
