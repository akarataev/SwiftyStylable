Pod::Spec.new do |s|
  s.name             = 'SwiftyStylable'
  s.version          = '0.1.0'
  s.summary          = 'Ultra lightweight style library'

  s.homepage         = 'https://github.com/akarataev/SwiftyStylable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akarataev' => 'hol0d@me.com' }
  s.source           = { :git => 'https://github.com/akarataev/SwiftyStylable.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akarataev'

  s.swift_version = '4.2'
  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftyStylable/Classes/**/*'
  
end
