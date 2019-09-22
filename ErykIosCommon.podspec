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

  s.swift_version = '4.2'
  s.ios.deployment_target = '10.3'

  s.resource_bundle = { 'ErykIosCommon' => 'ErykIosCommon/Assets/*.{xcassets,ttf}' }
  s.resources = [
    'ErykIosCommon/Assets/*.{xcassets}',
    'ErykIosCommon/Assets/**/*.{lproj}',
    # 'ErykIosCommon/Classes/**/*.{xib}',
  ]

  s.source_files = 'ErykIosCommon/Classes/**/*'

  # Swinject
  s.dependency 'Swinject', '2.6.1'
  s.dependency 'SwinjectStoryboard', '>= 2.2.0'
  s.dependency 'SwinjectAutoregistration', '>= 2.6.1'

  # rx
  s.dependency 'Moya-ObjectMapper/RxSwift'
  s.dependency 'Moya/RxSwift', '>= 11.0.2'
  s.dependency 'RxSwift', '>= 4.3.1'

  # networking
  s.dependency 'Alamofire', '>= 4.7.3'
  s.dependency 'ObjectMapper', '>= 3.3.0'

  # ui
  s.dependency 'SkyFloatingLabelTextField', '>= 3.6.0'
  s.dependency 'Kingfisher', '>= 4.10.0'
  s.dependency 'SkeletonView', '>= 1.4.1'
  s.dependency 'SwiftMessages', '>= 6.0.0'
  
  # progress
  s.dependency 'PKHUD', '~> 5.0'
  s.dependency 'TransitionButton', '~> 0.5.2'
  
  # util
  s.dependency 'XCGLogger', '>= 6.1.0'

end
