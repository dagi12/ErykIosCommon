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
  s.license          = 'MIT'
  s.author           = { 'Eryk Mariankowski' => 'dagi12@o2.pl' }
  s.source           = { :git => 'https://github.com/dagi12/eryk-ios-common.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.resource_bundle = { 'ErykIosCommon' => 'ErykIosCommon/Assets/*.{xcassets,ttf}' }
  s.resources = [
    'ErykIosCommon/Assets/*.{xcassets}',
    'ErykIosCommon/Assets/**/*.{lproj}'
  ]

  s.source_files = 'ErykIosCommon/Classes/**/*'
  s.dependency 'Alamofire', '~> 4.7.2'
  s.dependency 'ObjectMapper', '~> 3.0.0'
  s.dependency 'Moya-ObjectMapper/RxSwift', '~> 2.5'
  s.dependency 'Moya/RxSwift', '~> 10.0.2'
  s.dependency 'RxSwift', '~> 4.0.0'
  s.dependency 'SkyFloatingLabelTextField', '~> 3.5.1'
  s.dependency 'Kingfisher', '~> 4.8.0'
  s.dependency 'Whisper', '~> 6.0.2'

  s.dependency 'Swinject', '~> 2.4.1'
  s.dependency 'SwinjectStoryboard', '~> 2.0.1'
  s.dependency 'SwinjectAutoregistration', '~> 2.1.1'

end
