Pod::Spec.new do |spec|
  # 库的名字：框架名字一定要写对，pod search "框架名"就是搜的这个
  spec.name         = "JobsBlock"
  # 库的版本
  spec.version      = "1.0.0"
  # 库的摘要
  spec.summary      = "JobsBlock"
  # 库描述
  spec.description  = <<-DESC
                         JobsOCBaseConfig.JobsBlock
                    DESC
  # 远程仓库地址，即 GitHub 的地址，或者你使用的其他的 Gitlab，码云的地址
  spec.homepage     = "https://github.com/295060456/JobsBlock"
  # 库的遵守的开源协议
  spec.license      = {:type => 'MIT', :file => 'LICENSE'}
  # 作者信息
  spec.author             = {"Jobs" => "lg295060456@gmail.com"}
  spec.social_media_url   = "https://github.com/295060456"
  # 支持多个平台使用时
  spec.ios.deployment_target = "10.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # 库的支持的最低平台版本
  spec.platform     = :ios, '7.0'
  # 库的是否需要支持ARC
  spec.requires_arc = true
  # 库的公开的头文件
  # spec.public_header_files = "JobsBlock/JobsBlock.h"

  # 库的资源路径：路径可以指向远端代码库，也可以指向本地项目，例如：
  ## 1、指向Git远端代码库：spec.source = {:git => "git@git.oschina.net:yoowei/yoowei.git", :tag => "1.0.0"}
  ## 2、指向本地项目：spec.source = {:path => 'yoowei',:tag => "#{spec.version}"}
  ## 3、本地文件 spec.source = {:git => '~/Desktop/ChartboostSDK'}
  ## 4、zip：spec.source = {:http=> 'http://xxx.zip', :tag => "1.0.0"}
  ## 5、svn：spec.source = {:svn=> 'http://path', :tag => "1.0.0"}

# 建议使用 HTTPS 而不是 Git SSH URLs。这是因为某些防火墙可能会阻止对 SSH URL 的访问，而允许对 HTTPS URL 的访问。
  spec.source = {
  :git => "https://github.com/295060456/JobsBlock.git",
  :tag => "#{spec.version}",
  :commit => "Jobs第一次推送"}
  spec.source_files =   [
    'Block1',
    'Block2'
  ]
  # [
  #   '不定参数的Block',
  #   '确定参数的Block'
  # ]
  # 不包含的文件列表
  # spec.exclude_files = "Classes/Exclude"

  spec.user_target_xcconfig = {
  'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  # spec.default_subspec = 'BaseConfig'

  # spec.BaseConfig 'BaseConfig' do |baseConfig|
  #     core.source_files = 'JobsOCBaseConfigCore/Classes/BaseConfig/**/*'
  #     core.public_header_files = 'JobsOCBaseConfigCore/Classes/JobsOCBaseConfigPrefixHeader.pch'
  #     core.frameworks = 'UIKit','AVFoundation'
  # end

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # 库依赖的framework
  spec.frameworks   = "UIKit","Foundation"
  # spec.libraries = "iconv", "xml2"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  # spec.resources = "Resources/*.png"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave" # 需要保留的文件路径
  # spec.vendored_libraries # 对外提供的.a。在打成.a库时有用

end

