//
//  ReposData.h
//
//  Created by Evgeny Zorin on 09/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Owner;

@interface ReposData : NSObject <NSCoding, NSCopying>

@property (nonatomic, copy) NSString *keysUrl;
@property (nonatomic, copy) NSString *statusesUrl;
@property (nonatomic, copy) NSString *issuesUrl;
@property (nonatomic, copy) NSString *language;
@property (nonatomic, copy) NSString *issueEventsUrl;
@property (nonatomic, assign) double internalBaseClassIdentifier;
@property (nonatomic, copy) Owner *owner;
@property (nonatomic, copy) NSString *eventsUrl;
@property (nonatomic, copy) NSString *subscriptionUrl;
@property (nonatomic, assign) double watchers;
@property (nonatomic, copy) NSString *gitCommitsUrl;
@property (nonatomic, copy) NSString *subscribersUrl;
@property (nonatomic, copy) NSString *cloneUrl;
@property (nonatomic, assign) BOOL hasWiki;
@property (nonatomic, copy) NSString *pullsUrl;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL fork;
@property (nonatomic, copy) NSString *notificationsUrl;
@property (nonatomic, copy) NSString *internalBaseClassDescription;
@property (nonatomic, copy) NSString *collaboratorsUrl;
@property (nonatomic, copy) NSString *deploymentsUrl;
@property (nonatomic, copy) NSString *languagesUrl;
@property (nonatomic, assign) BOOL hasIssues;
@property (nonatomic, copy) NSString *commentsUrl;
@property (nonatomic, assign) BOOL privateProperty;
@property (nonatomic, assign) double size;
@property (nonatomic, copy) NSString *gitTagsUrl;
@property (nonatomic, copy) NSString *updatedAt;
@property (nonatomic, copy) NSString *sshUrl;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *archiveUrl;
@property (nonatomic, assign) double openIssuesCount;
@property (nonatomic, copy) NSString *milestonesUrl;
@property (nonatomic, copy) NSString *blobsUrl;
@property (nonatomic, copy) NSString *contributorsUrl;
@property (nonatomic, copy) NSString *contentsUrl;
@property (nonatomic, assign) double forksCount;
@property (nonatomic, copy) NSString *treesUrl;
@property (nonatomic, strong) id mirrorUrl;
@property (nonatomic, assign) BOOL hasDownloads;
@property (nonatomic, copy) NSString *createdAt;
@property (nonatomic, copy) NSString *forksUrl;
@property (nonatomic, copy) NSString *svnUrl;
@property (nonatomic, copy) NSString *commitsUrl;
@property (nonatomic, copy) NSString *homepage;
@property (nonatomic, copy) NSString *teamsUrl;
@property (nonatomic, copy) NSString *branchesUrl;
@property (nonatomic, copy) NSString *issueCommentUrl;
@property (nonatomic, copy) NSString *mergesUrl;
@property (nonatomic, copy) NSString *gitRefsUrl;
@property (nonatomic, copy) NSString *gitUrl;
@property (nonatomic, assign) double forks;
@property (nonatomic, assign) double openIssues;
@property (nonatomic, copy) NSString *hooksUrl;
@property (nonatomic, copy) NSString *htmlUrl;
@property (nonatomic, copy) NSString *stargazersUrl;
@property (nonatomic, assign) BOOL hasPages;
@property (nonatomic, copy) NSString *assigneesUrl;
@property (nonatomic, copy) NSString *compareUrl;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, copy) NSString *tagsUrl;
@property (nonatomic, copy) NSString *releasesUrl;
@property (nonatomic, copy) NSString *pushedAt;
@property (nonatomic, copy) NSString *labelsUrl;
@property (nonatomic, copy) NSString *downloadsUrl;
@property (nonatomic, copy) NSString *defaultBranch;
@property (nonatomic, assign) double stargazersCount;
@property (nonatomic, assign) double watchersCount;

/**
 *  Static inialization model by dictionary
 *
 *  @param dict NSDictionary instance for convertion ReposData
 *
 *  @return ReposData instance
 */
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
/**
 *  Init instance by dictionary
 *
 *  @param dict NSDictionary instance for convertion ReposData
 *
 *  @return ReposData instance
 */
- (instancetype)initWithDictionary:(NSDictionary *)dict;

/**
 *  Convert data do NSDictionary instances
 *
 *  @return dictionary converted JsonData
 */
- (NSDictionary *)dictionaryRepresentation;
/**
 *  Fill Array of data by ReposData class instances
 *
 *  @param array Array of json dictionaries
 *
 *  @return Array of ReposData Dictionaries
 */
+ (NSArray*)arrayWithResultsArray:(NSArray*)array;

@end
