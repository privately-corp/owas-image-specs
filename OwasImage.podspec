Pod::Spec.new do |s|
    s.name         = "OwasImage"
    s.version      = "0.1.1"
    s.summary      = "On-device online wellbeing and safety SDK for image analysis."
    s.description  = <<-DESC
    On-device nudity detection in images in milliseconds, using Machine Learning. 
    DESC
    s.homepage     = "https://github.com/privately-corp/owas-image-specs"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022 Privately SA
                  LICENSE
                }
    s.author             = { "Mathieu Monney" => "developer.contact@privately.eu" }
    s.source       = { :http => 'https://sos-ch-dk-2.exo.io/eu.privately.sdk/ios/owas/OwasImage-0.1.1.xcframework.zip' }
    s.vendored_frameworks = ["OwasImage.xcframework"]
    s.dependency 'PrivatelyCoreIos', '0.1.1'
    s.platform = :ios
    s.swift_version = "5.5"
    s.ios.deployment_target  = '13.0'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end