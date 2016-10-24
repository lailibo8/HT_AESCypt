#
# Be sure to run `pod lib lint HT_AESCypt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HT_AESCypt'
  s.version          = '0.1.0'
  s.summary          = '针对加密方式的一种工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO:通过加密，进行一种数据的加密的方式，进行数据的加密，更加安全和便捷。
                       DESC

  s.homepage         = 'https://github.com/lailibo8/HT_AESCypt'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lailibo8' => 'lailibo2009@163.com' }
  s.source           = { :git => 'https://github.com/lailibo8/HT_AESCypt.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HT_AESCypt/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HT_AESCypt' => ['HT_AESCypt/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
