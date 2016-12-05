//
//  Owner.h
//
//  Created by Evgeny Zorin on 09/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Owner : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double ownerIdentifier;
@property (nonatomic, copy) NSString *organizationsUrl;
@property (nonatomic, copy) NSString *receivedEventsUrl;
@property (nonatomic, copy) NSString *followingUrl;
@property (nonatomic, copy) NSString *login;
@property (nonatomic, copy) NSString *subscriptionsUrl;
@property (nonatomic, copy) NSString *avatarUrl;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *reposUrl;
@property (nonatomic, copy) NSString *htmlUrl;
@property (nonatomic, copy) NSString *eventsUrl;
@property (nonatomic, assign) BOOL siteAdmin;
@property (nonatomic, copy) NSString *starredUrl;
@property (nonatomic, copy) NSString *gistsUrl;
@property (nonatomic, copy) NSString *gravatarId;
@property (nonatomic, copy) NSString *followersUrl;

/**
 *  Static inialization model by dictionary
 *
 *  @param dict NSDictionary instance for convertion Owner
 *
 *  @return ReposData instance
 */
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
/**
 *  Convert data do NSDictionary instances
 *
 *  @return dictionary converted JsonData
 */
- (instancetype)initWithDictionary:(NSDictionary *)dict;
/**
 *  Fill Array of data by ReposData class instances
 *
 *  @param array Array of json dictionaries
 *
 *  @return Array of ReposData Dictionaries
 */
- (NSDictionary *)dictionaryRepresentation;

@end
