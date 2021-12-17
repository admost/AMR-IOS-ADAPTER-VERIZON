Pod::Spec.new do |s|
  s.name             = 'AMRAdapterVerizon'
  s.version          = '1.14.0.2'
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
  s.vendored_libraries = 'AMRAdapterVerizon/Libs/libAMRAdapterVerizon.a'
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'Verizon-Ads-StandardEdition', '1.14.0'
end
