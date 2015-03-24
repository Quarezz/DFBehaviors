Pod::Spec.new do |s|
  s.name             = "DFBehaviors"
  s.version          = "0.0.4"
  s.summary          = "DFBehaviors, a collection of iOS behaviors"
  s.homepage         = "https://github.com/DigitalForms/DFBehaviors"
  s.license          = 'MIT'
  s.author           = { "Digitalforms" => "bieleckicezary@gmail.com" }
  s.source           = { :git => 'https://github.com/DigitalForms/DFBehaviors.git', :tag => "0.0.4" }

  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DFBehaviors' => ['Pod/Assets/*.png']
  }

  # s.frameworks = 'UIKit', 'BlocksKit', 'UIActionSheet+Blocks'
  # s.dependency 'AFNetworking', '~> 2.3'
end
