#
# Be sure to run `pod lib lint MPGoogleAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MPGoogleAnalytics"
  s.version          = "0.2.2"
  s.summary          = "A short description of MPGoogleAnalytics."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = "https://github.com/matiasgualino/MPGoogleAnalytics"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Matias Gualino" => "matias.gualino@gmail.com" }
  s.source           = { :git => "https://github.com/matiasgualino/MPGoogleAnalytics.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MPGoogleAnalytics/Classes/**/*'

s.compiler_flags = '-framework "UIKit"', '-ObjC', '$(inherited)'

s.preserve_paths = 'MPGoogleAnalytics/**', 'Example/**'

s.vendored_libraries = 'MPGoogleAnalytics/Classes/libGoogleAnalyticsServices.a'

other_frameworks =  ['UIKit', 'CoreData', 'SystemConfiguration', 'Foundation']

other_ldflags = '$(inherited) -framework UIKit -framework CoreData -framework SystemConfiguration -framework Foundation -lz -lstdc++'

s.xcconfig     = {

'OTHER_LDFLAGS[arch=arm64]'  => other_ldflags,
'OTHER_LDFLAGS[arch=armv7]'  => other_ldflags,
'OTHER_LDFLAGS[arch=i386]'  => other_ldflags,
'OTHER_LDFLAGS[arch=x86_64]'  => other_ldflags,
'OTHER_LDFLAGS[arch=armv7s]' => other_ldflags
}

end
