Pod::Spec.new do |spec|
  spec.name         = "H3"
  spec.version      = "3.7.1"
  spec.summary      = "iOS wrapper over Uber H3 from https://github.com/uber/h3"
  spec.description  =<<-DESC
iOS wrapper over Uber H3 from https://github.com/uber/h3 that can we used with Swift.
                     DESC
  spec.homepage     = "https://github.com/ehmjaysee/h3-ios"
  spec.license      = "Apache 2.0 License"
  spec.author       = { "Mike Chartier" => "sirmichael@gmail.com" }

  spec.source       = { :git => "git@github.com:ehmjaysee/h3-ios.git", :tag => "v#{spec.version}" }

  spec.source_files = 'src/*'
  spec.public_header_files = 'src/h3api.h'
  spec.ios.deployment_target = '8.0'
  spec.static_framework = true
  spec.pod_target_xcconfig = { 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO', 'CLANG_WARN_STRICT_PROTOTYPES' => 'NO' }

end
