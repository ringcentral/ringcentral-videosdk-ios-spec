Pod::Spec.new do |s|
  s.name         = 'RCVUIKit'
  s.version      = '0.3.0'
  s.summary      = 'Ringcentral Native Video UI Kit for iOS.'
  s.homepage     = 'https://ringcentral.github.io/ringcentral-videosdk-ios'
  s.license      = { :type => 'Copyright', :text => 'Copyright ©2023 Ringcentral' }
  s.author       = { 'Ringcentral Video Team' => 'rcv-partners@ringcentral.com' }
  s.source       = { :http => 'https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/v0.3.0/RCVUIKit.zip', 
    :sha1 => '0c96697f043d5c9452425958d67c94f0b0f4c5915d890922c2ca568eeac2450b',
    :flatten => true }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'RCVUIKit/RCVUIKit.framework'
  # s.frameworks = 'Ringcentral-Video-SDK'
  s.requires_arc = true
  # s.frameworks = 'CoreTelephony','CoreMedia','AVFoundation','VideoToolbox','AudioToolbox','CoreMotion'
  # s.libraries = 'c++','resolv'
end
