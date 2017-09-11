Pod::Spec.new do |s|
  s.name = 'MultiTracker'
  s.version = '0.1.0'
  s.license = 'MIT'
  s.summary = 'Elegant library to send events to different agents'
  s.homepage = 'https://github.com/Artear/App_Library_IOS_MultiTracker'
  s.authors = { 'Jose Luis Sagredo Pedraza' => 'jsagredo.ing@gmail.com' }
  s.source = { :git => 'https://github.com/Artear/App_Library_IOS_MultiTracker.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files = 'MultiTracker/Classes/**/*'
end