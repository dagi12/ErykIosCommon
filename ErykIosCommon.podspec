#
# Be sure to run `pod lib lint ErykIosCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ErykIosCommon'
  s.version          = '0.2.0'
  s.summary          = 'Eryk lib'
  s.description      = 'Common resources shared across my projects.'

  s.homepage         = 'https://github.com/dagi12/eryk-ios-common'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eryk Mariankowski' => 'dagi12@o2.pl' }
  s.source           = { :git => 'https://github.com/dagi12/eryk-ios-common.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.resource_bundle = { 'ErykIosCommon' => 'ErykIosCommon/Assets/*.ttf' }

  s.source_files = 'ErykIosCommon/Classes/**/*'
  s.dependency 'Alamofire', '~> 4.5.1'
  s.dependency 'Moya/RxSwift', '~> 10.0.0'
  s.dependency 'RxSwift', '~> 4.0.0'
  s.dependency 'SkyFloatingLabelTextField', '~> 3.2.1'
  s.dependency 'Kingfisher', '~> 4.1.0'
end
