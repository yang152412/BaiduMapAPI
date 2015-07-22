Pod::Spec.new do |s|

  s.name         = "BaiduMapAPI"
  s.version      = "2.8.0"
  s.summary      = "A short description of BaiduMapAPI."
  s.description  = <<-DESC
                   A longer description of BaiduMapAPI in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://developer.baidu.com/map/index.php?title=iossdk"

  s.license      = { :type => 'Copyright', :text => 'LICENSE  ©2013 Baidu, Inc. All rights reserved.' }
  s.author             = { "yang" => "yang152412@163.com" }

  s.ios.deployment_target = "5.0"
  s.watchos.deployment_target = "2.0"

  s.source       = { :git => "https://github.com/yang152412/BaiduMapAPI", :tag => s.version }

  s.default_subspec = 'All'
  s.subspec 'All' do |spec|
    spec.ios.dependency 'BaiduMapAPI/Core'
    spec.ios.dependency 'BaiduMapAPI/Extend'
  end
  s.subspec 'Core' do |spec|
    spec.requires_arc            = true
    spec.compiler_flags          = '-ObjC'
    spec.resources               = 'Framework/Resources/mapapi.bundle'
    spec.ios.vendored_frameworks = 'Framework/BaiduMapAPI.framework'
    spec.public_header_files = [
      'Framework/BaiduMapAPI.framework/Headers/*.h'
    ]
    spec.frameworks = [
      'UIKit',
      'CoreLocation',
      'QuartzCore',
      'OpenGLES',
      'SystemConfiguration',
      'CoreGraphics',
      'Security'
    ]
    spec.libraries = [
      "stdc++",
      "stdc++.6"
    ]
  end

  s.subspec 'Extend' do |spec|
    spec.requires_arc        = true
    spec.public_header_files = [
      'Framework/Extend/*.h'
    ]
    spec.source_files = [
        'Framework/Extend/*.{h,mm,m}'
    ]
    spec.ios.dependency 'BaiduMapAPI/Core'
  end

end
