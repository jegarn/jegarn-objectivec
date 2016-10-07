Pod::Spec.new do |s|
  s.name         = 'JegarnClient'
  s.summary      = 'Objective-C implementation of jegarn client'
  s.version      = '1.0.0'
  s.license      = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors      = { 'yaoguai' => 'newtopstdio@163.com' }
  s.social_media_url = 'https://yaoguais.com'
  s.homepage     = 'https://github.com/jegarn/jegarn-objectivec'

  s.ios.deployment_target = '6.0'

  s.source       = { :git => 'https://github.com/jegarn/jegarn-objectivec.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'Jegarn/**/*'

  s.frameworks = 'Foundation'
  s.dependency 'MPMessagePack'

end
