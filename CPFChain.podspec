Pod::Spec.new do |s|
  s.name = 'CPFChain'
  s.version = '0.0.1'
  s.summary = 'Swift链式调用基础库'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'chenpengfei' => 'afeiafeia@163.com' }
  s.source = { :git => 'git@github.com:Loadar/CPFChain.git', :tag => s.version.to_s }
  s.homepage = 'https://github.com/Loadar'

  s.ios.deployment_target = "8.0"
  s.source_files = 'Classes/*.swift'
  s.requires_arc = true
end


