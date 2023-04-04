Pod::Spec.new do |s|
  s.name         = 'RCVUIKit'
  s.version      = '0.1.0'
  s.summary      = 'Ringcentral Native Video UI Kit for iOS.'
  s.homepage     = 'https://ringcentral.github.io/ringcentral-videosdk-ios'
  s.license      = { :type => 'Copyright', :text => 'Copyright ©2023 Ringcentral' }
  s.author       = { 'Ringcentral Video Team' => 'rcv-partners@ringcentral.com' }
  s.source       = { :http => 'https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/ui-v0.1.0/RCVUIKit.zip', 
    :sha256 => '157025bc02d310993365f8941767790fd169daa5acab16bd984bc9154779e3b4',
    :flatten => true }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'RCVUIKit.framework'
  s.resource_bundles = {
   "Resources" => ["Resources.bundle/*/**"]
  }
  s.frameworks = 'Ringcentral-Video-SDK'
  s.requires_arc = true
  # s.frameworks = 'CoreTelephony','CoreMedia','AVFoundation','VideoToolbox','AudioToolbox','CoreMotion'
  # s.libraries = 'c++','resolv'
end