Pod::Spec.new do |s|
  s.name             = "CollabSDK"
  s.version          = "0.2.3"
  s.summary          = "SDK for backend collaboration using Kindoma"
  s.homepage         = "http://kindoma.com"
  s.license          = { "type" => "Commercial",
			  "text" => "Copyright Kindoma Inc. 2015. All rights reserved."}
  s.author           = { "Tico" => "tico@kindoma.com" }
# this results in the error 
# - ERROR | [iOS] file patterns: The `vendored_frameworks` pattern did not match any file.
# because the built framework isn't included in the repository
  s.source           = { :http => "https://my.kindoma.com/downloads/CollabSDK.frameworkv" + s.version.to_s + ".zip" }
  #s.source		= { :path => "." }
  s.social_media_url = 'https://twitter.com/kindoma'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreText'
  s.module_name = 'CollabSDK'
  s.vendored_frameworks = 'CollabSDK.framework'
  s.dependency 'AFNetworking', '~> 2'
  s.dependency 'Firebase'
  s.dependency 'SSKeychain'
  s.dependency 'MBProgressHUD'
  s.dependency 'NSData+Base64'
  s.dependency 'Reachability'
  s.dependency 'AWSiOSSDKv2'
  s.dependency 'SimpleKeychain', '~> 0.3'

end