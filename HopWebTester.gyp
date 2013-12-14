{ 
	'targets': [
		{
			'target_name': 'HopAPI',
			'product_name': 'HopAPI',
			'type': 'shared_library',
			'mac_bundle': 1,
			'sources': [
				'./HopAPI/HopService.h',
				'./HopAPI/HopMethodCall.h',
				'./HopAPI/HopService.m',
				'./HopAPI/HopMethodCall.m',
				
				'./HopAPI/TestService.h',
				'./HopAPI/TestService.m',
				
				'./HopAPI/UserService.h',
				'./HopAPI/UserService.m',
				
			],
			'xcode_settings': {
				'SDKROOT': 'macosx10.8',
				'OTHER_CFLAGS':['-fobjc-arc'],
				'MACOSX_DEPLOYMENT_TARGET':'10.7',
				'ARCHS':'$(ARCHS_STANDARD_64_BIT)'
			},
			'mac_bundle_resources': [
			],
			'link_settings': {
				'libraries': [
					'$(SDKROOT)/System/Library/Frameworks/Foundation.framework',
					'$(SDKROOT)/System/Library/Frameworks/AppKit.framework',
				],
			},
		},
		{
			'target_name': 'HopWebTester',
			'product_name': 'HopWebTester',
			'type': 'executable',
			'mac_bundle': 1,
			'dependencies':['HopAPI'],
			'sources': [
					'HopWebTester/HopWebTester-Prefix.pch',
					'HopWebTester/WebTesterAppDelegate.h',
					'HopWebTester/WebTesterAppDelegate.m',
					'HopWebTester/main.m'
			],
			'xcode_settings': {
				'SDKROOT': 'macosx10.8',
				'OTHER_CFLAGS':['-fobjc-arc'],
				'MACOSX_DEPLOYMENT_TARGET':'10.7',
				'ARCHS':'$(ARCHS_STANDARD_64_BIT)',
				'INFOPLIST_FILE':'HopWebTester/HopWebTester-Info.plist'
			},
			'mac_bundle_resources': [
				'HopWebTester/en.lproj/Credits.rtf',
				'HopWebTester/en.lproj/InfoPlist.strings',
				'HopWebTester/en.lproj/MainMenu.xib'
			],
			'link_settings': {
				'libraries': [
					'$(SDKROOT)/System/Library/Frameworks/Cocoa.framework',
					'$(SDKROOT)/System/Library/Frameworks/Foundation.framework',
					'$(SDKROOT)/System/Library/Frameworks/AppKit.framework',
				],
			},
		}
	]
}

