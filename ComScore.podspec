Pod::Spec.new do |s|
  s.name             = 'ComScore'
  s.version          = '5.1.7.161004'
  s.summary          = 'Official application and streaming analytics library for iOS, watchOS and tvOS from comScore'
  s.description      = <<-DESC
  This library is used to collect application and streaming analytics data from iOS, watchOS and tvOS applications. The library supports apps developed in native Objective C or Swift with Apple Xcode or in other languages/tools which can include and use native Objective C libraries.
                       DESC
  s.homepage         = 'https://github.com/comscore/ComScore-iOS-watchOS-tvOS'
  s.license          = 'Custom'
  s.author           = { "comScore" => "www.comscore.com" }
  s.source           = { :git => "https://github.com/comscore/ComScore-iOS-watchOS-tvOS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/comScore'

  s.libraries = "c++"
  s.frameworks = "Security"

  s.ios.deployment_target = '6.0'
  s.ios.vendored_frameworks = 'comScore/iOS/ComScore-iOS.framework'
  s.ios.preserve_paths = 'comScore/iOS/ComScore-iOS.framework'
  s.ios.public_header_files = 'comScore/iOS/ComScore-iOS.framework/Versions/A/Headers/*.h'
  s.ios.frameworks = "SystemConfiguration"

  s.tvos.deployment_target = '9.0'
  s.tvos.vendored_frameworks = 'comScore/tvOS/ComScore-tvOS.framework'
  s.tvos.preserve_paths = "comScore/tvOS/ComScore-tvOS.framework"
  s.tvos.public_header_files = "comScore/tvOS/ComScore-tvOS.framework/Versions/A/Headers/*.h"
  s.tvos.frameworks = "SystemConfiguration"

  s.watchos.deployment_target = '2.0'
  s.watchos.vendored_frameworks = 'comScore/watchOS/ComScore-watchOS.framework'
  s.watchos.preserve_paths = "comScore/watchOS/ComScore-watchOS.framework"
  s.watchos.public_header_files = "comScore/watchOS/ComScore-watchOS.framework/Versions/A/Headers/*.h"

  s.header_dir = 'ComScore'
  s.module_name = 'ComScore'
end
