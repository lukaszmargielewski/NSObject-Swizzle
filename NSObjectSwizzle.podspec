#
# Be sure to run `pod lib lint NSObjectSwizzle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NSObjectSwizzle"
  s.version          = "0.1.0"
  s.summary          = "NSObject+Swizzle basic of method swizzling"
  s.description      = "NSObject category for swizzling methods (both instance and class)"

  s.homepage         = "https://github.com/lukaszmargielewski/NSObject-Swizzle"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Lukasz Margielewski" => "lukasz.margielewski@gmail.com" }
  s.source           = { :git => "https://github.com/lukaszmargielewski/NSObject-Swizzle.git", :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/lukmarg'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'NSObject+Swizzle/*.{h,m}'

end
