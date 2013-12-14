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

@interface UserService: HopService
{
	
		
    HopMethodCall *create;
	
		
    HopMethodCall *loadByParam;
	
		
    HopMethodCall *authenticate;
	
		
    HopMethodCall *list;
	
		
    HopMethodCall *currentUser;
	
		
    HopMethodCall *logout;
	
		
    HopMethodCall *load;
	
		
    HopMethodCall *save;
	
		
    HopMethodCall *del;
	
		
    HopMethodCall *advancedCaching;
	
}
- (id) initWithBaseUrl:(NSString *)baseURL;

	
- (id) create: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) loadByParam: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) authenticate: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) list: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) currentUser: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) logout: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) load: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) save: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) del: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

	
- (id) advancedCaching: (NSDictionary *) input whenComplete: (void (^)(NSString *error, id result)) onComplete;

@end
