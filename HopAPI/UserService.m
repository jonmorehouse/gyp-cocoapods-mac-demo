//
//  UserService.m
//  HopJSCLI
//
//  Created by celer on 1/22/13.
//  Copyright (c) 2013 hopjs.org. All rights reserved.
//

#import "UserService.h"

@implementation UserService 
- (id) initWithBaseUrl:(NSString *)baseURL {
    
    self = [super initWithBaseUrl:baseURL];
    

	
    create = [[HopMethodCall alloc] init:@"UserService.create" usingA:@"POST" onPath:@"/api/user" withParams: [self fromJSON: @"{\"email\":{\"desc\":\"The email address for the user\",\"demand\":true},\"name\":{\"desc\":\"The user's name\",\"demand\":true},\"password\":{\"desc\":\"The password for the user\",\"demand\":true}}" ]];


	
    loadByParam = [[HopMethodCall alloc] init:@"UserService.loadByParam" usingA:@"GET" onPath:@"/api/user/param" withParams: [self fromJSON: @"{\"id\":{\"demand\":true}}" ]];


	
    authenticate = [[HopMethodCall alloc] init:@"UserService.authenticate" usingA:@"POST" onPath:@"/api/user/auth" withParams: [self fromJSON: @"{\"password\":{\"demand\":true},\"name\":{\"demand\":true}}" ]];


	
    list = [[HopMethodCall alloc] init:@"UserService.list" usingA:@"GET" onPath:@"/api/user" withParams: [self fromJSON: @"{}" ]];


	
    currentUser = [[HopMethodCall alloc] init:@"UserService.currentUser" usingA:@"GET" onPath:@"/api/user/current" withParams: [self fromJSON: @"{}" ]];


	
    logout = [[HopMethodCall alloc] init:@"UserService.logout" usingA:@"GET" onPath:@"/api/user/logout" withParams: [self fromJSON: @"{}" ]];


	
    load = [[HopMethodCall alloc] init:@"UserService.load" usingA:@"GET" onPath:@"/api/user/:id" withParams: [self fromJSON: @"{\"id\":{\"demand\":true}}" ]];


	
    save = [[HopMethodCall alloc] init:@"UserService.save" usingA:@"POST" onPath:@"/api/user/:id" withParams: [self fromJSON: @"{\"id\":{\"demand\":true},\"name\":{\"demand\":true},\"email\":{\"demand\":true},\"password\":{\"demand\":true}}" ]];


	
    del = [[HopMethodCall alloc] init:@"UserService.del" usingA:@"DELETE" onPath:@"/api/user/:id" withParams: [self fromJSON: @"{\"id\":{\"demand\":true}}" ]];


	
    advancedCaching = [[HopMethodCall alloc] init:@"UserService.advancedCaching" usingA:@"GET" onPath:@"/api/caching/advanced/:id" withParams: [self fromJSON: @"{\"id\":{\"demand\":true}}" ]];


    
    return self;
}

	
- (id) create: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:create withInput:input whenComplete:handler ];
    
    
    }

	
- (id) loadByParam: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:loadByParam withInput:input whenComplete:handler ];
    
    
    }

	
- (id) authenticate: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:authenticate withInput:input whenComplete:handler ];
    
    
    }

	
- (id) list: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:list withInput:input whenComplete:handler ];
    
    
    }

	
- (id) currentUser: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:currentUser withInput:input whenComplete:handler ];
    
    
    }

	
- (id) logout: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:logout withInput:input whenComplete:handler ];
    
    
    }

	
- (id) load: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:load withInput:input whenComplete:handler ];
    
    
    }

	
- (id) save: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:save withInput:input whenComplete:handler ];
    
    
    }

	
- (id) del: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:del withInput:input whenComplete:handler ];
    
    
    }

	
- (id) advancedCaching: (NSDictionary *)input
            whenComplete: (void (^)(NSString *error,id result)) handler {
    
        return [self doRequest:advancedCaching withInput:input whenComplete:handler ];
    
    
    }

@end
