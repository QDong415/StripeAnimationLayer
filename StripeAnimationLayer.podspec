#
# Be sure to run `pod lib lint StripeAnimationLayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StripeAnimationLayer'
  s.version          = '1.0.0'
  s.summary          = 'A stripeLoading View, useful in videoLoading,livingLoading.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Loading Animation Stripe CALayer, enable to custom speed,direction,gapWidth. Base on CAReplicatorLayer ,very lightful
                       DESC

  s.homepage         = 'https://github.com/QDong415/StripeAnimationLayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QDong415' => '285275534@qq.com' }
  s.source           = { :git => 'https://github.com/QDong415/StripeAnimationLayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version='4.0'
  s.source_files = 'StripeAnimationLayer/Classes/**/*'
  
  # s.resource_bundles = {
  #   'StripeAnimationLayer' => ['StripeAnimationLayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
