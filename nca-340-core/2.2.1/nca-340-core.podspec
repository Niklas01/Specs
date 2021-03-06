#
# Be sure to run `pod spec lint nca-340-core.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'nca-340-core'
  s.version  = '2.2.1'
  s.license  = { :type => 'commercial' }
  s.summary  = 'MobileBanking core product.'
  s.homepage = 'https://finnova.extranet.netcetera.biz/nca-340-4/niki'
  s.author   = 'Netcetera'

  # Specify the location from where the source should be retreived.
  s.source   = { :svn => 'https://finnova.extranet.netcetera.biz/nca-340-4/svn/core/ios/nca-340-core/tags/2.2.1/'}
  s.description = 'Podfile for MobileBanking core product.'

  # If this Pod runs only on iOS or OS X, then specify that with one of
  # these, or none if it runs on both platforms.
  s.platform = :ios, '5.0'

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  # Alternatively, you can use the FileList class for even more control
  # over the selected files.
  # (See http://rake.rubyforge.org/classes/Rake/FileList.html.)
  #
  s.source_files ='src/core/**/*.{h,m}'
  s.exclude_files = 'src/common/resources/Info.plist', 'src/core/rolotec/**/*.{h,m}'

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  #
  # Also allows the use of the FileList class like `source_files does.
  #
  r1 = 'src/common/resources/Default.png'
  r2 = 'src/common/resources/Default@2x.png'
  r3 = 'src/common/resources/Default-568h@2x.png'
  r4 = 'src/common/resources/RMCFramework_resource.bundle/Default.png'
  r5 = 'src/common/resources/RMCFramework_resource.bundle/Default@2x.png'
  r6 = 'src/common/resources/RMCFramework_resource.bundle/Default-568@2x.png'
  r7 = 'src/common/resources/RMCFramework_resource.bundle/icon.png'
  r8 = 'src/common/resources/RMCFramework_resource.bundle/icon@2x.png'
  r9 = 'src/common/resources/RMCFramework_resource.bundle/icon-568@2x.png'


  s.resources = 'src/common/**/*.xib', 'src/common/**/*.png', 'src/common/**/*.html', 'src/common/**/*.strings', 'src/common/**/*.xml', 'src/common/**/*.mustache', 'src/common/**/termsOfUse.txt'

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  # Copy the smartscan framework in the Pods/nca-340-core/lib/ file
  s.ios.preserve_paths =  'lib/smartscan.framework'
  s.framework ='smartscan'
  s.public_header_files = 'src/core/**/*.h', 'lib/smartscan.framework/**/*.h'
  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #

  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/nca-340-core/lib/smartscan.framework/"' }
  # Adds the smartscan framework in the Pod target
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/nca-340-core/lib/"', 'OTHER_LDFLAGS' => '-framework smartscan' }

  # Finally, specify any Pods that this Pod depends on.
  #
  s.dependency 'GRMustache','6.7.5'
  s.dependency 'JRSwizzle', '1.0'
  s.dependency 'GirdersiOS', '1.0.0'
  s.dependency 'Reachability'
end
