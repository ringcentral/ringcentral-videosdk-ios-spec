
Pod::Spec.new do |s|
  s.name         = 'Ringcentral-Video-SDK-Test'
  s.version      = '0.14.1'
  s.summary      = 'Ringcentral Native SDK Test for iOS.'
  s.homepage     = 'https://ringcentral.github.io/ringcentral-videosdk-ios'
  s.license      = { :type => 'Copyright', :text => 'Copyright ©2023 Ringcentral' }
  s.author       = { 'Ringcentral Video Team' => 'rcv-partners@ringcentral.com' }
  s.source       = { :http => 'https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/v0.14.4/RingCentral_Video_iOS_Client_SDK.zip',
    :sha1 => '7b6bd6ab7d70970e222ab6d2bb5d3ffc0c6a41bf',
    :flatten => true }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'rcvsdk.xcframework', 'RcvReplayKitExtension.xcframework', 'Segment.xcframework'
    # Add public headers
  s.source_files = 'rcvsdk.xcframework/ios-arm64/rcvsdk.framework/Headers/*.h'
  s.public_header_files = 'rcvsdk.xcframework/ios-arm64/rcvsdk.framework/Headers/*.h'
  s.requires_arc = true
  # s.frameworks = 'CoreTelephony','CoreMedia','AVFoundation','VideoToolbox','AudioToolbox','CoreMotion'
  # s.libraries = 'c++','resolv'
end
