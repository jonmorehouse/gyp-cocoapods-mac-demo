//
//  UserService.h
//  HopJSCLI
//
//  Created by celer on 1/22/13.
//  Copyright (c) 2013 hopjs.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HopService.h"

typedef void (^OnComplete) (NSString *error,id);

@interface TestService: HopService
{
	
		
    HopMethodCall *wait;
	
		
    HopMethodCall *log;
	
}
- (id) initWithBaseUrl:(NSString *)baseURL;

	
- (id) wait: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) log: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

@end
