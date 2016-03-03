Pod::Spec.new do |s|
  s.name         = "OROpenSubtitleDownloader"
  s.version      = "1.2.1"
  s.summary      = "An Obj-C API for Searching and Downloading Subtitles from OpenSubtitles."
  s.homepage     = "https://github.com/orta/OROpenSubtitleDownloader"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { "orta" => "orta.therox@gmail.com", "David Bonnet" => "https://twitter.com/iGranDav" }
  s.source       = { :git => "https://github.com/orta/OROpenSubtitleDownloader.git", :tag => "#{s.version}" }
  s.source_files = 'OROpenSubtitleDownloader.{h,m}'
  s.library   = 'z'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'

  s.dependency 'AFNetworking'
  s.dependency 'xmlrpc'
end
