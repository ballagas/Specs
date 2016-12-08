Pod::Spec.new do |s|
  s.name             = "PlaytimeSDK"
  s.version          = "1.5"
  s.summary          = "SDK for video collaboration using Playtime"
  s.homepage         = "http://playtime.us"
  s.license          = { "type" => "Commercial",
			  "text" => "Copyright Kindoma Inc. 2016. All rights reserved."}
  s.author           = { "Tico" => "tico@kindoma.com" }
# this results in the error 
# - ERROR | [iOS] file patterns: The `vendored_frameworks` pattern did not match any file.
# because the built framework isn't included in the repository
  s.source           = { :http => "https://dl.dropboxusercontent.com/u/21714253/PlaytimeSDK/PlaytimeSDK.frameworkv" + s.version.to_s + ".zip" }
  #s.source		= { :path => "." }
  s.social_media_url = 'https://twitter.com/kindoma'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreText'
  s.module_name = 'PlaytimeSDK'
  s.vendored_frameworks = 'PlaytimeSDK.framework'
  s.dependency 'MBProgressHUD'
  s.dependency 'UIView+draggable'
end