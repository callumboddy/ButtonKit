Pod::Spec.new do |s|
  s.name         = 'ButtonKit'
  s.version      = '0.1.0'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/callumboddy/Buttons'
  s.authors      = {'Callum Boddy': 'callum.boddy@gmail.com'}
  s.summary      = 'Button stlying'

  s.platform     =  :ios, '8.0.0'
  s.source       =  {git: 'https://github.com/callumboddy/Buttons.git', :tag => s.version}
  s.source_files = 'ButtonKit/*'
  s.requires_arc = true
end
