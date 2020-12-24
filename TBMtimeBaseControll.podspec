

Pod::Spec.new do |spec|

  spec.name         = "TBMtimeBaseControll"               				#spec的名字
  spec.version      = "0.0.1"								#spec对应的版本
  spec.swift_version = '4.0.0'
  spec.summary      = "基础控件合集，网络、导航栏、tabbar等"					#简介

  # description 详细的描述
  spec.description  = <<-DESC
   此处是对于当前项目的详细描述，此基础控件包含网络、导航栏、tabbar等 我非常不建议在这里写详细的描述 
                   DESC

  # 版权的声明 所属于谁 
  # spec.license = { :type => "Copyright", : text => '北京市东移时光' }
  spec.license = { :type => 'Copyright', :text => 'Copyright 2006-2020 Mtime.com Inc. All rights reserved.' }
 
  # 作者是谁
  spec.author = { "tianbinbin" => "15711163094@163.com" }

  # 支持的版本 
  spec.platform     = :ios, "11.0"


  # 资源页面 此处对应的homePage 可以是任何一个网页 没有任何限制 
  spec.homepage     = "https://github.com/tianbinbin/TBMtimeBaseControll"

  # 资源地址
  spec.source       = { :git => "git@github.com:tianbinbin/TBMtimeBaseControll.git", :tag => "#{spec.version}" }

  # 这个项目对外暴露的文件 .h .m 等 这个地方 有对应的信息啊 这个地方会有一些疑惑 所有路径下的所有文件
  spec.source_files  = "TBMtimeBaseControll/**/*.swift"

  # 排除对外引用的文件
  spec.exclude_files = "TBMtimeBaseControll/AppDelegate.swift","TBMtimeBaseControll/ViewController.swift","TBMtimeBaseControll/Exclude/ExcludeVC.swift"

  # 头文件 目前发现这个没啥卵用 先废弃
  # spec.public_header_files = "Classes/**/*.h"


  # 最新的podsepec 只有resource 没有 resource_bundles，  resource是合并到主工程中  resource_bundles 是将图片等资源合并到自己的工程中 但是都对外暴露 此处是将图片以及storyBoard 都对外暴露了
  spec.resource_bundles = { 'TBMtimeBaseControll' => ['TBMtimeBaseControll/Assets.xcassets', 'TBMtimeBaseControll/**/*.{xib,storyboard}'] }
 

  # 这个类下面的公有的头文件 swift 就不用设置了 oc的话需要
  # spec.public_header_files = "Classes/**/*.h"


  # 这个是干什么用的呢
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  

  # 当前项目所依赖的第三方库 都需要对外暴露
  spec.dependency "Alamofire", "5.2.1"
  spec.dependency "R.swift", "5.2.2"
  spec.dependency "RxSwift", "5.1.1"
  spec.dependency "RxCocoa", "5.1.1"
  spec.dependency "RxDataSources", "4.0.1"
  spec.dependency "RxGesture", "3.0.2"
  spec.dependency "SnapKit", "5.0.1"

end

