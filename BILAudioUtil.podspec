Pod::Spec.new do |s|
  s.name                  = "BILAudioUtil"
  s.version               = "0.1"
  s.summary               = "Util for AVAudioSession, iOS System Volume Hack"
  s.author                = { "Yusuke SUGAMIYA" => "yusuke.dnpp@gmail.com" }
  s.homepage              = "https://github.com/Beatrobo/BILAudioUtil"
  s.source                = { :git => "git@github.com:Beatrobo/BILAudioUtil.git", :tag => "#{s.version}" }
  s.ios.source_files      = 'BILAudioUtil/**/*.{h,m}'
  s.ios.deployment_target = '6.0'
  s.requires_arc          = true
  
  s.ios.frameworks        = 'AVFoundation', 'MediaPlayer'
  
  s.dependency 'dp_exec_block_on_main_thread'
  
  s.license = {
   :type => "Beatrobo Inc Library",
   :text => ""
  }
end
