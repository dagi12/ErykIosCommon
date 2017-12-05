#
# Be sure to run `pod lib lint ErykIosCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ErykIosCommon'
  s.version          = '0.1.1'
  s.summary          = 'A short description of ErykIosCommon.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dagi12@o2.pl/ErykIosCommon'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dagi12@o2.pl' => 'dagi12@o2.pl' }
  s.source           = { :git => 'https://github.com/dagi12/ErykIosCommon.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'ErykIosCommon/Classes/**/*'
  s.dependency 'Alamofire', '~> 4.5.1'
  s.dependency 'Moya/RxSwift', '~> 10.0.0'
  s.dependency 'RxSwift', '~> 4.0.0'
  s.dependency 'SkyFloatingLabelTextField', '~> 3.2.1'
  s.dependency 'Kingfisher', '~> 4.1.0'
end
