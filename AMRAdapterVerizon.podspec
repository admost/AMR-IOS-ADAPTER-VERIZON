Pod::Spec.new do |s|
  s.name             = 'AMRAdapterVerizon'
  s.version          = '1.14.2.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Verizon adapter for AMR SDK.'
  s.description      = 'AMR Verizon adapter allows publishers to mediate Verizon banner and interstitial ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-VERIZON.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'AMRAdapterVerizon/Libs/AMRAdapterVerizon.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.15'
  s.dependency 'Verizon-Ads-StandardEdition', '1.14.2'
end
