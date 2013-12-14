//
//  UserService.m
//  HopJSCLI
//
//  Created by celer on 1/22/13.
//  Copyright (c) 2013 hopjs.org. All rights reserved.
//

#import "TestService.h"

@implementation TestService 
- (id) initWithBaseUrl:(NSString *)baseURL {
    
    self = [super initWithBaseUrl:baseURL];
    

	
    wait = [[HopMethodCall alloc] init:@"TestService.wait" usingA:@"GET" onPath:@"/api/hopjs/test/wait" withParams: [self fromJSON: @"{\"duration\":{\"demand\":true}}" ]];


	
    log = [[HopMethodCall alloc] init:@"TestService.log" usingA:@"GET" onPath:@"/api/hopjs/test/log" withParams: [self fromJSON: @"{\"msg\":{\"demand\":true}}" ]];


    
    return self;
}

	
- (id) wait: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:wait withInput:input whenComplete:handler ];
    
    
    }

	
- (id) log: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:log withInput:input whenComplete:handler ];
    
    
    }

@end
