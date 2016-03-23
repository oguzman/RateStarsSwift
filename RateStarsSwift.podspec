#
# Be sure to run `pod lib lint RateStarsSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RateStarsSwift"
  s.version          = "0.1.2"
  s.summary          = "RateStarsSwift provides a rating view"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "RateStarsSwift provides a rating view, according to user tab on the stars, and present the selected image immediately, You can retrieve the selected value using your 'component.rating' var"

  s.homepage         = "https://github.com/oguzman/RateStarsSwift"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "oguzman" => "a.omargc@gmail.com" }
  s.source           = { :git => "https://github.com/oguzman/RateStarsSwift.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ccabuto'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RateStarsSwift' => ['Pod/*.xcassets', 'Pod/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
