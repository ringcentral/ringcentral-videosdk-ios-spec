
Pod::Spec.new do |s|
  s.name         = 'Ringcentral-Video-SDK'
  s.version      = '0.14.0'
  s.summary      = 'Ringcentral Native SDK for iOS.'
  s.homepage     = 'https://ringcentral.github.io/ringcentral-videosdk-ios'
  s.license      = { :type => 'Copyright', :text => 'Copyright ©2023 Ringcentral' }
  s.author       = { 'Ringcentral Video Team' => 'rcv-partners@ringcentral.com' }
  s.source       = { :http => 'https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/v0.14.0/RingCentral_Video_iOS_Client_SDK.zip',
    :sha1 => '626d64eb1118028c71eedb7d29f068d28c7c4558',
    :flatten => true }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'rcvsdk.xcframework', 'RcvReplayKitExtension.xcframework', 'Segment.xcframework'
  s.requires_arc = true
  # s.frameworks = 'CoreTelephony','CoreMedia','AVFoundation','VideoToolbox','AudioToolbox','CoreMotion'
  # s.libraries = 'c++','resolv'
end
