Pod::Spec.new do |s|
  s.name         = 'RCVUIKit'
  s.version      = '0.1.2'
  s.summary      = 'Ringcentral Native Video UI Kit for iOS.'
  s.homepage     = 'https://ringcentral.github.io/ringcentral-videosdk-ios'
  s.license      = { :type => 'Copyright', :text => 'Copyright ©2023 Ringcentral' }
  s.author       = { 'Ringcentral Video Team' => 'rcv-partners@ringcentral.com' }
  s.source       = { :http => 'https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/ui-v0.1.0/RCVUIKit.zip', 
    :sha1 => 'eff7a59fd23c6c9b8979d1e076fa95e483cc5ff7',
    :flatten => true }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'RCVUIKit/RCVUIKit.framework'
  s.resource_bundles = {
   "Resources" => ["RCVUIKit/Resources.bundle/*/**"]
  }
  # s.frameworks = 'Ringcentral-Video-SDK'
  s.requires_arc = true
  # s.frameworks = 'CoreTelephony','CoreMedia','AVFoundation','VideoToolbox','AudioToolbox','CoreMotion'
  # s.libraries = 'c++','resolv'
end
