Pod::Spec.new do |s|
  s.name         = "SnapKitExtend"
  s.version      = "1.0.7"
  s.license      = "MIT"
  s.summary      = "Snapkit extend to support multiple view layout and a grid layout."
  s.homepage     = "https://github.com/spicyShrimp/SnapKitExtend"
  s.author       = { "spricyShrimp" => "78268731@qq.com" }
  s.source       = { :git => "https://github.com/spicyShrimp/SnapKitExtend.git", :tag => "#{s.version}" }
  s.source_files = "SnapKitExtend/*.swift"
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.dependency "SnapKit"
end
