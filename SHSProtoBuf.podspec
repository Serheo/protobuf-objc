Pod::Spec.new do |s|
  s.name         = "SHSProtoBuf"
  s.version      = "0.9"
  s.summary      = "Objective-C Protocol Buffers 2.5 implementation"
  
  s.homepage     = "https://code.google.com/p/protobuf"
  s.license      = "Apache 2.0"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Copyright 2010 Booyah Inc.
    Copyright 2008 Google Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
     LICENSE
  }
   
  s.author       = { "Shatunov Sergey" => "sshatunov@yandex.ru" }
  s.author       = { "Alexey Khokhlov" => "alexeyxo@gmail.com" }
  s.author       = "David Bonnefoy"
  s.author       = { "Ragy Eleish" => "ragy@regwez.com" }
  s.author       = { "Jon Parise" => "jon@booyah.com" }
  s.authors      = "Kenton Varda", "Sanjay Ghemawat", "Jeff Dean"
  
  s.source       = { :git => "https://github.com/Serheo/protobuf-objc.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  
  s.header_dir = "ProtocolBuffers"
  s.preserve_paths = 'README.md'
  
  s.requires_arc = false
  s.xcconfig = { 'WARNING_CFLAGS' => '$(inherited) -Wno-missing-prototypes -Wno-format' }
  s.source_files = 'src/runtime/Classes/*.{h,m}'  

  s.subspec 'arc' do |spa|
    spa.xcconfig = { 'WARNING_CFLAGS' => '$(inherited) -Wno-missing-prototypes -Wno-format' }
    spa.source       = { :git => "https://github.com/Serheo/protobuf-objc.git", :tag => s.version.to_s }
    spa.source_files =  'src/runtime/Classes/Descriptor*.{h,m}'
    spa.requires_arc = true  
  end  
  
end