//
//  ReposData.m
//
//  Created by Evgeny Zorin on 09/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ReposData.h"
#import "Owner.h"


static NSString *const kReposDataKeysUrl = @"keys_url";
static NSString *const kReposDataStatusesUrl = @"statuses_url";
static NSString *const kReposDataIssuesUrl = @"issues_url";
static NSString *const kReposDataLanguage = @"language";
static NSString *const kReposDataIssueEventsUrl = @"issue_events_url";
static NSString *const kReposDataId = @"id";
static NSString *const kReposDataOwner = @"owner";
static NSString *const kReposDataEventsUrl = @"events_url";
static NSString *const kReposDataSubscriptionUrl = @"subscription_url";
static NSString *const kReposDataWatchers = @"watchers";
static NSString *const kReposDataGitCommitsUrl = @"git_commits_url";
static NSString *const kReposDataSubscribersUrl = @"subscribers_url";
static NSString *const kReposDataCloneUrl = @"clone_url";
static NSString *const kReposDataHasWiki = @"has_wiki";
static NSString *const kReposDataPullsUrl = @"pulls_url";
static NSString *const kReposDataUrl = @"url";
static NSString *const kReposDataFork = @"fork";
static NSString *const kReposDataNotificationsUrl = @"notifications_url";
static NSString *const kReposDataDescription = @"description";
static NSString *const kReposDataCollaboratorsUrl = @"collaborators_url";
static NSString *const kReposDataDeploymentsUrl = @"deployments_url";
static NSString *const kReposDataLanguagesUrl = @"languages_url";
static NSString *const kReposDataHasIssues = @"has_issues";
static NSString *const kReposDataCommentsUrl = @"comments_url";
static NSString *const kReposDataPrivate = @"private";
static NSString *const kReposDataSize = @"size";
static NSString *const kReposDataGitTagsUrl = @"git_tags_url";
static NSString *const kReposDataUpdatedAt = @"updated_at";
static NSString *const kReposDataSshUrl = @"ssh_url";
static NSString *const kReposDataName = @"name";
static NSString *const kReposDataArchiveUrl = @"archive_url";
static NSString *const kReposDataOpenIssuesCount = @"open_issues_count";
static NSString *const kReposDataMilestonesUrl = @"milestones_url";
static NSString *const kReposDataBlobsUrl = @"blobs_url";
static NSString *const kReposDataContributorsUrl = @"contributors_url";
static NSString *const kReposDataContentsUrl = @"contents_url";
static NSString *const kReposDataForksCount = @"forks_count";
static NSString *const kReposDataTreesUrl = @"trees_url";
static NSString *const kReposDataMirrorUrl = @"mirror_url";
static NSString *const kReposDataHasDownloads = @"has_downloads";
static NSString *const kReposDataCreatedAt = @"created_at";
static NSString *const kReposDataForksUrl = @"forks_url";
static NSString *const kReposDataSvnUrl = @"svn_url";
static NSString *const kReposDataCommitsUrl = @"commits_url";
static NSString *const kReposDataHomepage = @"homepage";
static NSString *const kReposDataTeamsUrl = @"teams_url";
static NSString *const kReposDataBranchesUrl = @"branches_url";
static NSString *const kReposDataIssueCommentUrl = @"issue_comment_url";
static NSString *const kReposDataMergesUrl = @"merges_url";
static NSString *const kReposDataGitRefsUrl = @"git_refs_url";
static NSString *const kReposDataGitUrl = @"git_url";
static NSString *const kReposDataForks = @"forks";
static NSString *const kReposDataOpenIssues = @"open_issues";
static NSString *const kReposDataHooksUrl = @"hooks_url";
static NSString *const kReposDataHtmlUrl = @"html_url";
static NSString *const kReposDataStargazersUrl = @"stargazers_url";
static NSString *const kReposDataHasPages = @"has_pages";
static NSString *const kReposDataAssigneesUrl = @"assignees_url";
static NSString *const kReposDataCompareUrl = @"compare_url";
static NSString *const kReposDataFullName = @"full_name";
static NSString *const kReposDataTagsUrl = @"tags_url";
static NSString *const kReposDataReleasesUrl = @"releases_url";
static NSString *const kReposDataPushedAt = @"pushed_at";
static NSString *const kReposDataLabelsUrl = @"labels_url";
static NSString *const kReposDataDownloadsUrl = @"downloads_url";
static NSString *const kReposDataDefaultBranch = @"default_branch";
static NSString *const kReposDataStargazersCount = @"stargazers_count";
static NSString *const kReposDataWatchersCount = @"watchers_count";


@interface ReposData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ReposData

@synthesize keysUrl = _keysUrl;
@synthesize statusesUrl = _statusesUrl;
@synthesize issuesUrl = _issuesUrl;
@synthesize language = _language;
@synthesize issueEventsUrl = _issueEventsUrl;
@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize owner = _owner;
@synthesize eventsUrl = _eventsUrl;
@synthesize subscriptionUrl = _subscriptionUrl;
@synthesize watchers = _watchers;
@synthesize gitCommitsUrl = _gitCommitsUrl;
@synthesize subscribersUrl = _subscribersUrl;
@synthesize cloneUrl = _cloneUrl;
@synthesize hasWiki = _hasWiki;
@synthesize pullsUrl = _pullsUrl;
@synthesize url = _url;
@synthesize fork = _fork;
@synthesize notificationsUrl = _notificationsUrl;
@synthesize internalBaseClassDescription = _internalBaseClassDescription;
@synthesize collaboratorsUrl = _collaboratorsUrl;
@synthesize deploymentsUrl = _deploymentsUrl;
@synthesize languagesUrl = _languagesUrl;
@synthesize hasIssues = _hasIssues;
@synthesize commentsUrl = _commentsUrl;
@synthesize privateProperty = _privateProperty;
@synthesize size = _size;
@synthesize gitTagsUrl = _gitTagsUrl;
@synthesize updatedAt = _updatedAt;
@synthesize sshUrl = _sshUrl;
@synthesize name = _name;
@synthesize archiveUrl = _archiveUrl;
@synthesize openIssuesCount = _openIssuesCount;
@synthesize milestonesUrl = _milestonesUrl;
@synthesize blobsUrl = _blobsUrl;
@synthesize contributorsUrl = _contributorsUrl;
@synthesize contentsUrl = _contentsUrl;
@synthesize forksCount = _forksCount;
@synthesize treesUrl = _treesUrl;
@synthesize mirrorUrl = _mirrorUrl;
@synthesize hasDownloads = _hasDownloads;
@synthesize createdAt = _createdAt;
@synthesize forksUrl = _forksUrl;
@synthesize svnUrl = _svnUrl;
@synthesize commitsUrl = _commitsUrl;
@synthesize homepage = _homepage;
@synthesize teamsUrl = _teamsUrl;
@synthesize branchesUrl = _branchesUrl;
@synthesize issueCommentUrl = _issueCommentUrl;
@synthesize mergesUrl = _mergesUrl;
@synthesize gitRefsUrl = _gitRefsUrl;
@synthesize gitUrl = _gitUrl;
@synthesize forks = _forks;
@synthesize openIssues = _openIssues;
@synthesize hooksUrl = _hooksUrl;
@synthesize htmlUrl = _htmlUrl;
@synthesize stargazersUrl = _stargazersUrl;
@synthesize hasPages = _hasPages;
@synthesize assigneesUrl = _assigneesUrl;
@synthesize compareUrl = _compareUrl;
@synthesize fullName = _fullName;
@synthesize tagsUrl = _tagsUrl;
@synthesize releasesUrl = _releasesUrl;
@synthesize pushedAt = _pushedAt;
@synthesize labelsUrl = _labelsUrl;
@synthesize downloadsUrl = _downloadsUrl;
@synthesize defaultBranch = _defaultBranch;
@synthesize stargazersCount = _stargazersCount;
@synthesize watchersCount = _watchersCount;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.keysUrl = [self objectOrNilForKey:kReposDataKeysUrl fromDictionary:dict];
            self.statusesUrl = [self objectOrNilForKey:kReposDataStatusesUrl fromDictionary:dict];
            self.issuesUrl = [self objectOrNilForKey:kReposDataIssuesUrl fromDictionary:dict];
            self.language = [self objectOrNilForKey:kReposDataLanguage fromDictionary:dict];
            self.issueEventsUrl = [self objectOrNilForKey:kReposDataIssueEventsUrl fromDictionary:dict];
            self.internalBaseClassIdentifier = [[self objectOrNilForKey:kReposDataId fromDictionary:dict] doubleValue];
            self.owner = [Owner modelObjectWithDictionary:dict[kReposDataOwner]];
            self.eventsUrl = [self objectOrNilForKey:kReposDataEventsUrl fromDictionary:dict];
            self.subscriptionUrl = [self objectOrNilForKey:kReposDataSubscriptionUrl fromDictionary:dict];
            self.watchers = [[self objectOrNilForKey:kReposDataWatchers fromDictionary:dict] doubleValue];
            self.gitCommitsUrl = [self objectOrNilForKey:kReposDataGitCommitsUrl fromDictionary:dict];
            self.subscribersUrl = [self objectOrNilForKey:kReposDataSubscribersUrl fromDictionary:dict];
            self.cloneUrl = [self objectOrNilForKey:kReposDataCloneUrl fromDictionary:dict];
            self.hasWiki = [[self objectOrNilForKey:kReposDataHasWiki fromDictionary:dict] boolValue];
            self.pullsUrl = [self objectOrNilForKey:kReposDataPullsUrl fromDictionary:dict];
            self.url = [self objectOrNilForKey:kReposDataUrl fromDictionary:dict];
            self.fork = [[self objectOrNilForKey:kReposDataFork fromDictionary:dict] boolValue];
            self.notificationsUrl = [self objectOrNilForKey:kReposDataNotificationsUrl fromDictionary:dict];
            self.internalBaseClassDescription = [self objectOrNilForKey:kReposDataDescription fromDictionary:dict];
            self.collaboratorsUrl = [self objectOrNilForKey:kReposDataCollaboratorsUrl fromDictionary:dict];
            self.deploymentsUrl = [self objectOrNilForKey:kReposDataDeploymentsUrl fromDictionary:dict];
            self.languagesUrl = [self objectOrNilForKey:kReposDataLanguagesUrl fromDictionary:dict];
            self.hasIssues = [[self objectOrNilForKey:kReposDataHasIssues fromDictionary:dict] boolValue];
            self.commentsUrl = [self objectOrNilForKey:kReposDataCommentsUrl fromDictionary:dict];
            self.privateProperty = [[self objectOrNilForKey:kReposDataPrivate fromDictionary:dict] boolValue];
            self.size = [[self objectOrNilForKey:kReposDataSize fromDictionary:dict] doubleValue];
            self.gitTagsUrl = [self objectOrNilForKey:kReposDataGitTagsUrl fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kReposDataUpdatedAt fromDictionary:dict];
            self.sshUrl = [self objectOrNilForKey:kReposDataSshUrl fromDictionary:dict];
            self.name = [self objectOrNilForKey:kReposDataName fromDictionary:dict];
            self.archiveUrl = [self objectOrNilForKey:kReposDataArchiveUrl fromDictionary:dict];
            self.openIssuesCount = [[self objectOrNilForKey:kReposDataOpenIssuesCount fromDictionary:dict] doubleValue];
            self.milestonesUrl = [self objectOrNilForKey:kReposDataMilestonesUrl fromDictionary:dict];
            self.blobsUrl = [self objectOrNilForKey:kReposDataBlobsUrl fromDictionary:dict];
            self.contributorsUrl = [self objectOrNilForKey:kReposDataContributorsUrl fromDictionary:dict];
            self.contentsUrl = [self objectOrNilForKey:kReposDataContentsUrl fromDictionary:dict];
            self.forksCount = [[self objectOrNilForKey:kReposDataForksCount fromDictionary:dict] doubleValue];
            self.treesUrl = [self objectOrNilForKey:kReposDataTreesUrl fromDictionary:dict];
            self.mirrorUrl = [self objectOrNilForKey:kReposDataMirrorUrl fromDictionary:dict];
            self.hasDownloads = [[self objectOrNilForKey:kReposDataHasDownloads fromDictionary:dict] boolValue];
            self.createdAt = [self objectOrNilForKey:kReposDataCreatedAt fromDictionary:dict];
            self.forksUrl = [self objectOrNilForKey:kReposDataForksUrl fromDictionary:dict];
            self.svnUrl = [self objectOrNilForKey:kReposDataSvnUrl fromDictionary:dict];
            self.commitsUrl = [self objectOrNilForKey:kReposDataCommitsUrl fromDictionary:dict];
            self.homepage = [self objectOrNilForKey:kReposDataHomepage fromDictionary:dict];
            self.teamsUrl = [self objectOrNilForKey:kReposDataTeamsUrl fromDictionary:dict];
            self.branchesUrl = [self objectOrNilForKey:kReposDataBranchesUrl fromDictionary:dict];
            self.issueCommentUrl = [self objectOrNilForKey:kReposDataIssueCommentUrl fromDictionary:dict];
            self.mergesUrl = [self objectOrNilForKey:kReposDataMergesUrl fromDictionary:dict];
            self.gitRefsUrl = [self objectOrNilForKey:kReposDataGitRefsUrl fromDictionary:dict];
            self.gitUrl = [self objectOrNilForKey:kReposDataGitUrl fromDictionary:dict];
            self.forks = [[self objectOrNilForKey:kReposDataForks fromDictionary:dict] doubleValue];
            self.openIssues = [[self objectOrNilForKey:kReposDataOpenIssues fromDictionary:dict] doubleValue];
            self.hooksUrl = [self objectOrNilForKey:kReposDataHooksUrl fromDictionary:dict];
            self.htmlUrl = [self objectOrNilForKey:kReposDataHtmlUrl fromDictionary:dict];
            self.stargazersUrl = [self objectOrNilForKey:kReposDataStargazersUrl fromDictionary:dict];
            self.hasPages = [[self objectOrNilForKey:kReposDataHasPages fromDictionary:dict] boolValue];
            self.assigneesUrl = [self objectOrNilForKey:kReposDataAssigneesUrl fromDictionary:dict];
            self.compareUrl = [self objectOrNilForKey:kReposDataCompareUrl fromDictionary:dict];
            self.fullName = [self objectOrNilForKey:kReposDataFullName fromDictionary:dict];
            self.tagsUrl = [self objectOrNilForKey:kReposDataTagsUrl fromDictionary:dict];
            self.releasesUrl = [self objectOrNilForKey:kReposDataReleasesUrl fromDictionary:dict];
            self.pushedAt = [self objectOrNilForKey:kReposDataPushedAt fromDictionary:dict];
            self.labelsUrl = [self objectOrNilForKey:kReposDataLabelsUrl fromDictionary:dict];
            self.downloadsUrl = [self objectOrNilForKey:kReposDataDownloadsUrl fromDictionary:dict];
            self.defaultBranch = [self objectOrNilForKey:kReposDataDefaultBranch fromDictionary:dict];
            self.stargazersCount = [[self objectOrNilForKey:kReposDataStargazersCount fromDictionary:dict] doubleValue];
            self.watchersCount = [[self objectOrNilForKey:kReposDataWatchersCount fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.keysUrl forKey:kReposDataKeysUrl];
    [mutableDict setValue:self.statusesUrl forKey:kReposDataStatusesUrl];
    [mutableDict setValue:self.issuesUrl forKey:kReposDataIssuesUrl];
    [mutableDict setValue:self.language forKey:kReposDataLanguage];
    [mutableDict setValue:self.issueEventsUrl forKey:kReposDataIssueEventsUrl];
    [mutableDict setValue:@(self.internalBaseClassIdentifier) forKey:kReposDataId];
    [mutableDict setValue:[self.owner dictionaryRepresentation] forKey:kReposDataOwner];
    [mutableDict setValue:self.eventsUrl forKey:kReposDataEventsUrl];
    [mutableDict setValue:self.subscriptionUrl forKey:kReposDataSubscriptionUrl];
    [mutableDict setValue:@(self.watchers) forKey:kReposDataWatchers];
    [mutableDict setValue:self.gitCommitsUrl forKey:kReposDataGitCommitsUrl];
    [mutableDict setValue:self.subscribersUrl forKey:kReposDataSubscribersUrl];
    [mutableDict setValue:self.cloneUrl forKey:kReposDataCloneUrl];
    [mutableDict setValue:@(self.hasWiki) forKey:kReposDataHasWiki];
    [mutableDict setValue:self.pullsUrl forKey:kReposDataPullsUrl];
    [mutableDict setValue:self.url forKey:kReposDataUrl];
    [mutableDict setValue:@(self.fork) forKey:kReposDataFork];
    [mutableDict setValue:self.notificationsUrl forKey:kReposDataNotificationsUrl];
    [mutableDict setValue:self.internalBaseClassDescription forKey:kReposDataDescription];
    [mutableDict setValue:self.collaboratorsUrl forKey:kReposDataCollaboratorsUrl];
    [mutableDict setValue:self.deploymentsUrl forKey:kReposDataDeploymentsUrl];
    [mutableDict setValue:self.languagesUrl forKey:kReposDataLanguagesUrl];
    [mutableDict setValue:@(self.hasIssues) forKey:kReposDataHasIssues];
    [mutableDict setValue:self.commentsUrl forKey:kReposDataCommentsUrl];
    [mutableDict setValue:@(self.privateProperty) forKey:kReposDataPrivate];
    [mutableDict setValue:@(self.size) forKey:kReposDataSize];
    [mutableDict setValue:self.gitTagsUrl forKey:kReposDataGitTagsUrl];
    [mutableDict setValue:self.updatedAt forKey:kReposDataUpdatedAt];
    [mutableDict setValue:self.sshUrl forKey:kReposDataSshUrl];
    [mutableDict setValue:self.name forKey:kReposDataName];
    [mutableDict setValue:self.archiveUrl forKey:kReposDataArchiveUrl];
    [mutableDict setValue:@(self.openIssuesCount) forKey:kReposDataOpenIssuesCount];
    [mutableDict setValue:self.milestonesUrl forKey:kReposDataMilestonesUrl];
    [mutableDict setValue:self.blobsUrl forKey:kReposDataBlobsUrl];
    [mutableDict setValue:self.contributorsUrl forKey:kReposDataContributorsUrl];
    [mutableDict setValue:self.contentsUrl forKey:kReposDataContentsUrl];
    [mutableDict setValue:@(self.forksCount) forKey:kReposDataForksCount];
    [mutableDict setValue:self.treesUrl forKey:kReposDataTreesUrl];
    [mutableDict setValue:self.mirrorUrl forKey:kReposDataMirrorUrl];
    [mutableDict setValue:@(self.hasDownloads) forKey:kReposDataHasDownloads];
    [mutableDict setValue:self.createdAt forKey:kReposDataCreatedAt];
    [mutableDict setValue:self.forksUrl forKey:kReposDataForksUrl];
    [mutableDict setValue:self.svnUrl forKey:kReposDataSvnUrl];
    [mutableDict setValue:self.commitsUrl forKey:kReposDataCommitsUrl];
    [mutableDict setValue:self.homepage forKey:kReposDataHomepage];
    [mutableDict setValue:self.teamsUrl forKey:kReposDataTeamsUrl];
    [mutableDict setValue:self.branchesUrl forKey:kReposDataBranchesUrl];
    [mutableDict setValue:self.issueCommentUrl forKey:kReposDataIssueCommentUrl];
    [mutableDict setValue:self.mergesUrl forKey:kReposDataMergesUrl];
    [mutableDict setValue:self.gitRefsUrl forKey:kReposDataGitRefsUrl];
    [mutableDict setValue:self.gitUrl forKey:kReposDataGitUrl];
    [mutableDict setValue:@(self.forks) forKey:kReposDataForks];
    [mutableDict setValue:@(self.openIssues) forKey:kReposDataOpenIssues];
    [mutableDict setValue:self.hooksUrl forKey:kReposDataHooksUrl];
    [mutableDict setValue:self.htmlUrl forKey:kReposDataHtmlUrl];
    [mutableDict setValue:self.stargazersUrl forKey:kReposDataStargazersUrl];
    [mutableDict setValue:@(self.hasPages) forKey:kReposDataHasPages];
    [mutableDict setValue:self.assigneesUrl forKey:kReposDataAssigneesUrl];
    [mutableDict setValue:self.compareUrl forKey:kReposDataCompareUrl];
    [mutableDict setValue:self.fullName forKey:kReposDataFullName];
    [mutableDict setValue:self.tagsUrl forKey:kReposDataTagsUrl];
    [mutableDict setValue:self.releasesUrl forKey:kReposDataReleasesUrl];
    [mutableDict setValue:self.pushedAt forKey:kReposDataPushedAt];
    [mutableDict setValue:self.labelsUrl forKey:kReposDataLabelsUrl];
    [mutableDict setValue:self.downloadsUrl forKey:kReposDataDownloadsUrl];
    [mutableDict setValue:self.defaultBranch forKey:kReposDataDefaultBranch];
    [mutableDict setValue:@(self.stargazersCount) forKey:kReposDataStargazersCount];
    [mutableDict setValue:@(self.watchersCount) forKey:kReposDataWatchersCount];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = dict[aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.keysUrl = [aDecoder decodeObjectForKey:kReposDataKeysUrl];
    self.statusesUrl = [aDecoder decodeObjectForKey:kReposDataStatusesUrl];
    self.issuesUrl = [aDecoder decodeObjectForKey:kReposDataIssuesUrl];
    self.language = [aDecoder decodeObjectForKey:kReposDataLanguage];
    self.issueEventsUrl = [aDecoder decodeObjectForKey:kReposDataIssueEventsUrl];
    self.internalBaseClassIdentifier = [aDecoder decodeDoubleForKey:kReposDataId];
    self.owner = [aDecoder decodeObjectForKey:kReposDataOwner];
    self.eventsUrl = [aDecoder decodeObjectForKey:kReposDataEventsUrl];
    self.subscriptionUrl = [aDecoder decodeObjectForKey:kReposDataSubscriptionUrl];
    self.watchers = [aDecoder decodeDoubleForKey:kReposDataWatchers];
    self.gitCommitsUrl = [aDecoder decodeObjectForKey:kReposDataGitCommitsUrl];
    self.subscribersUrl = [aDecoder decodeObjectForKey:kReposDataSubscribersUrl];
    self.cloneUrl = [aDecoder decodeObjectForKey:kReposDataCloneUrl];
    self.hasWiki = [aDecoder decodeBoolForKey:kReposDataHasWiki];
    self.pullsUrl = [aDecoder decodeObjectForKey:kReposDataPullsUrl];
    self.url = [aDecoder decodeObjectForKey:kReposDataUrl];
    self.fork = [aDecoder decodeBoolForKey:kReposDataFork];
    self.notificationsUrl = [aDecoder decodeObjectForKey:kReposDataNotificationsUrl];
    self.internalBaseClassDescription = [aDecoder decodeObjectForKey:kReposDataDescription];
    self.collaboratorsUrl = [aDecoder decodeObjectForKey:kReposDataCollaboratorsUrl];
    self.deploymentsUrl = [aDecoder decodeObjectForKey:kReposDataDeploymentsUrl];
    self.languagesUrl = [aDecoder decodeObjectForKey:kReposDataLanguagesUrl];
    self.hasIssues = [aDecoder decodeBoolForKey:kReposDataHasIssues];
    self.commentsUrl = [aDecoder decodeObjectForKey:kReposDataCommentsUrl];
    self.privateProperty = [aDecoder decodeBoolForKey:kReposDataPrivate];
    self.size = [aDecoder decodeDoubleForKey:kReposDataSize];
    self.gitTagsUrl = [aDecoder decodeObjectForKey:kReposDataGitTagsUrl];
    self.updatedAt = [aDecoder decodeObjectForKey:kReposDataUpdatedAt];
    self.sshUrl = [aDecoder decodeObjectForKey:kReposDataSshUrl];
    self.name = [aDecoder decodeObjectForKey:kReposDataName];
    self.archiveUrl = [aDecoder decodeObjectForKey:kReposDataArchiveUrl];
    self.openIssuesCount = [aDecoder decodeDoubleForKey:kReposDataOpenIssuesCount];
    self.milestonesUrl = [aDecoder decodeObjectForKey:kReposDataMilestonesUrl];
    self.blobsUrl = [aDecoder decodeObjectForKey:kReposDataBlobsUrl];
    self.contributorsUrl = [aDecoder decodeObjectForKey:kReposDataContributorsUrl];
    self.contentsUrl = [aDecoder decodeObjectForKey:kReposDataContentsUrl];
    self.forksCount = [aDecoder decodeDoubleForKey:kReposDataForksCount];
    self.treesUrl = [aDecoder decodeObjectForKey:kReposDataTreesUrl];
    self.mirrorUrl = [aDecoder decodeObjectForKey:kReposDataMirrorUrl];
    self.hasDownloads = [aDecoder decodeBoolForKey:kReposDataHasDownloads];
    self.createdAt = [aDecoder decodeObjectForKey:kReposDataCreatedAt];
    self.forksUrl = [aDecoder decodeObjectForKey:kReposDataForksUrl];
    self.svnUrl = [aDecoder decodeObjectForKey:kReposDataSvnUrl];
    self.commitsUrl = [aDecoder decodeObjectForKey:kReposDataCommitsUrl];
    self.homepage = [aDecoder decodeObjectForKey:kReposDataHomepage];
    self.teamsUrl = [aDecoder decodeObjectForKey:kReposDataTeamsUrl];
    self.branchesUrl = [aDecoder decodeObjectForKey:kReposDataBranchesUrl];
    self.issueCommentUrl = [aDecoder decodeObjectForKey:kReposDataIssueCommentUrl];
    self.mergesUrl = [aDecoder decodeObjectForKey:kReposDataMergesUrl];
    self.gitRefsUrl = [aDecoder decodeObjectForKey:kReposDataGitRefsUrl];
    self.gitUrl = [aDecoder decodeObjectForKey:kReposDataGitUrl];
    self.forks = [aDecoder decodeDoubleForKey:kReposDataForks];
    self.openIssues = [aDecoder decodeDoubleForKey:kReposDataOpenIssues];
    self.hooksUrl = [aDecoder decodeObjectForKey:kReposDataHooksUrl];
    self.htmlUrl = [aDecoder decodeObjectForKey:kReposDataHtmlUrl];
    self.stargazersUrl = [aDecoder decodeObjectForKey:kReposDataStargazersUrl];
    self.hasPages = [aDecoder decodeBoolForKey:kReposDataHasPages];
    self.assigneesUrl = [aDecoder decodeObjectForKey:kReposDataAssigneesUrl];
    self.compareUrl = [aDecoder decodeObjectForKey:kReposDataCompareUrl];
    self.fullName = [aDecoder decodeObjectForKey:kReposDataFullName];
    self.tagsUrl = [aDecoder decodeObjectForKey:kReposDataTagsUrl];
    self.releasesUrl = [aDecoder decodeObjectForKey:kReposDataReleasesUrl];
    self.pushedAt = [aDecoder decodeObjectForKey:kReposDataPushedAt];
    self.labelsUrl = [aDecoder decodeObjectForKey:kReposDataLabelsUrl];
    self.downloadsUrl = [aDecoder decodeObjectForKey:kReposDataDownloadsUrl];
    self.defaultBranch = [aDecoder decodeObjectForKey:kReposDataDefaultBranch];
    self.stargazersCount = [aDecoder decodeDoubleForKey:kReposDataStargazersCount];
    self.watchersCount = [aDecoder decodeDoubleForKey:kReposDataWatchersCount];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_keysUrl forKey:kReposDataKeysUrl];
    [aCoder encodeObject:_statusesUrl forKey:kReposDataStatusesUrl];
    [aCoder encodeObject:_issuesUrl forKey:kReposDataIssuesUrl];
    [aCoder encodeObject:_language forKey:kReposDataLanguage];
    [aCoder encodeObject:_issueEventsUrl forKey:kReposDataIssueEventsUrl];
    [aCoder encodeDouble:_internalBaseClassIdentifier forKey:kReposDataId];
    [aCoder encodeObject:_owner forKey:kReposDataOwner];
    [aCoder encodeObject:_eventsUrl forKey:kReposDataEventsUrl];
    [aCoder encodeObject:_subscriptionUrl forKey:kReposDataSubscriptionUrl];
    [aCoder encodeDouble:_watchers forKey:kReposDataWatchers];
    [aCoder encodeObject:_gitCommitsUrl forKey:kReposDataGitCommitsUrl];
    [aCoder encodeObject:_subscribersUrl forKey:kReposDataSubscribersUrl];
    [aCoder encodeObject:_cloneUrl forKey:kReposDataCloneUrl];
    [aCoder encodeBool:_hasWiki forKey:kReposDataHasWiki];
    [aCoder encodeObject:_pullsUrl forKey:kReposDataPullsUrl];
    [aCoder encodeObject:_url forKey:kReposDataUrl];
    [aCoder encodeBool:_fork forKey:kReposDataFork];
    [aCoder encodeObject:_notificationsUrl forKey:kReposDataNotificationsUrl];
    [aCoder encodeObject:_internalBaseClassDescription forKey:kReposDataDescription];
    [aCoder encodeObject:_collaboratorsUrl forKey:kReposDataCollaboratorsUrl];
    [aCoder encodeObject:_deploymentsUrl forKey:kReposDataDeploymentsUrl];
    [aCoder encodeObject:_languagesUrl forKey:kReposDataLanguagesUrl];
    [aCoder encodeBool:_hasIssues forKey:kReposDataHasIssues];
    [aCoder encodeObject:_commentsUrl forKey:kReposDataCommentsUrl];
    [aCoder encodeBool:_privateProperty forKey:kReposDataPrivate];
    [aCoder encodeDouble:_size forKey:kReposDataSize];
    [aCoder encodeObject:_gitTagsUrl forKey:kReposDataGitTagsUrl];
    [aCoder encodeObject:_updatedAt forKey:kReposDataUpdatedAt];
    [aCoder encodeObject:_sshUrl forKey:kReposDataSshUrl];
    [aCoder encodeObject:_name forKey:kReposDataName];
    [aCoder encodeObject:_archiveUrl forKey:kReposDataArchiveUrl];
    [aCoder encodeDouble:_openIssuesCount forKey:kReposDataOpenIssuesCount];
    [aCoder encodeObject:_milestonesUrl forKey:kReposDataMilestonesUrl];
    [aCoder encodeObject:_blobsUrl forKey:kReposDataBlobsUrl];
    [aCoder encodeObject:_contributorsUrl forKey:kReposDataContributorsUrl];
    [aCoder encodeObject:_contentsUrl forKey:kReposDataContentsUrl];
    [aCoder encodeDouble:_forksCount forKey:kReposDataForksCount];
    [aCoder encodeObject:_treesUrl forKey:kReposDataTreesUrl];
    [aCoder encodeObject:_mirrorUrl forKey:kReposDataMirrorUrl];
    [aCoder encodeBool:_hasDownloads forKey:kReposDataHasDownloads];
    [aCoder encodeObject:_createdAt forKey:kReposDataCreatedAt];
    [aCoder encodeObject:_forksUrl forKey:kReposDataForksUrl];
    [aCoder encodeObject:_svnUrl forKey:kReposDataSvnUrl];
    [aCoder encodeObject:_commitsUrl forKey:kReposDataCommitsUrl];
    [aCoder encodeObject:_homepage forKey:kReposDataHomepage];
    [aCoder encodeObject:_teamsUrl forKey:kReposDataTeamsUrl];
    [aCoder encodeObject:_branchesUrl forKey:kReposDataBranchesUrl];
    [aCoder encodeObject:_issueCommentUrl forKey:kReposDataIssueCommentUrl];
    [aCoder encodeObject:_mergesUrl forKey:kReposDataMergesUrl];
    [aCoder encodeObject:_gitRefsUrl forKey:kReposDataGitRefsUrl];
    [aCoder encodeObject:_gitUrl forKey:kReposDataGitUrl];
    [aCoder encodeDouble:_forks forKey:kReposDataForks];
    [aCoder encodeDouble:_openIssues forKey:kReposDataOpenIssues];
    [aCoder encodeObject:_hooksUrl forKey:kReposDataHooksUrl];
    [aCoder encodeObject:_htmlUrl forKey:kReposDataHtmlUrl];
    [aCoder encodeObject:_stargazersUrl forKey:kReposDataStargazersUrl];
    [aCoder encodeBool:_hasPages forKey:kReposDataHasPages];
    [aCoder encodeObject:_assigneesUrl forKey:kReposDataAssigneesUrl];
    [aCoder encodeObject:_compareUrl forKey:kReposDataCompareUrl];
    [aCoder encodeObject:_fullName forKey:kReposDataFullName];
    [aCoder encodeObject:_tagsUrl forKey:kReposDataTagsUrl];
    [aCoder encodeObject:_releasesUrl forKey:kReposDataReleasesUrl];
    [aCoder encodeObject:_pushedAt forKey:kReposDataPushedAt];
    [aCoder encodeObject:_labelsUrl forKey:kReposDataLabelsUrl];
    [aCoder encodeObject:_downloadsUrl forKey:kReposDataDownloadsUrl];
    [aCoder encodeObject:_defaultBranch forKey:kReposDataDefaultBranch];
    [aCoder encodeDouble:_stargazersCount forKey:kReposDataStargazersCount];
    [aCoder encodeDouble:_watchersCount forKey:kReposDataWatchersCount];
}

- (id)copyWithZone:(NSZone *)zone
{
    ReposData *copy = [[[self class] alloc] init];
    
    if (copy) {

        copy.keysUrl = [self.keysUrl copyWithZone:zone];
        copy.statusesUrl = [self.statusesUrl copyWithZone:zone];
        copy.issuesUrl = [self.issuesUrl copyWithZone:zone];
        copy.language = [self.language copyWithZone:zone];
        copy.issueEventsUrl = [self.issueEventsUrl copyWithZone:zone];
        copy.internalBaseClassIdentifier = self.internalBaseClassIdentifier;
        copy.owner = [self.owner copyWithZone:zone];
        copy.eventsUrl = [self.eventsUrl copyWithZone:zone];
        copy.subscriptionUrl = [self.subscriptionUrl copyWithZone:zone];
        copy.watchers = self.watchers;
        copy.gitCommitsUrl = [self.gitCommitsUrl copyWithZone:zone];
        copy.subscribersUrl = [self.subscribersUrl copyWithZone:zone];
        copy.cloneUrl = [self.cloneUrl copyWithZone:zone];
        copy.hasWiki = self.hasWiki;
        copy.pullsUrl = [self.pullsUrl copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.fork = self.fork;
        copy.notificationsUrl = [self.notificationsUrl copyWithZone:zone];
        copy.internalBaseClassDescription = [self.internalBaseClassDescription copyWithZone:zone];
        copy.collaboratorsUrl = [self.collaboratorsUrl copyWithZone:zone];
        copy.deploymentsUrl = [self.deploymentsUrl copyWithZone:zone];
        copy.languagesUrl = [self.languagesUrl copyWithZone:zone];
        copy.hasIssues = self.hasIssues;
        copy.commentsUrl = [self.commentsUrl copyWithZone:zone];
        copy.privateProperty = self.privateProperty;
        copy.size = self.size;
        copy.gitTagsUrl = [self.gitTagsUrl copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.sshUrl = [self.sshUrl copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.archiveUrl = [self.archiveUrl copyWithZone:zone];
        copy.openIssuesCount = self.openIssuesCount;
        copy.milestonesUrl = [self.milestonesUrl copyWithZone:zone];
        copy.blobsUrl = [self.blobsUrl copyWithZone:zone];
        copy.contributorsUrl = [self.contributorsUrl copyWithZone:zone];
        copy.contentsUrl = [self.contentsUrl copyWithZone:zone];
        copy.forksCount = self.forksCount;
        copy.treesUrl = [self.treesUrl copyWithZone:zone];
        copy.mirrorUrl = [self.mirrorUrl copyWithZone:zone];
        copy.hasDownloads = self.hasDownloads;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.forksUrl = [self.forksUrl copyWithZone:zone];
        copy.svnUrl = [self.svnUrl copyWithZone:zone];
        copy.commitsUrl = [self.commitsUrl copyWithZone:zone];
        copy.homepage = [self.homepage copyWithZone:zone];
        copy.teamsUrl = [self.teamsUrl copyWithZone:zone];
        copy.branchesUrl = [self.branchesUrl copyWithZone:zone];
        copy.issueCommentUrl = [self.issueCommentUrl copyWithZone:zone];
        copy.mergesUrl = [self.mergesUrl copyWithZone:zone];
        copy.gitRefsUrl = [self.gitRefsUrl copyWithZone:zone];
        copy.gitUrl = [self.gitUrl copyWithZone:zone];
        copy.forks = self.forks;
        copy.openIssues = self.openIssues;
        copy.hooksUrl = [self.hooksUrl copyWithZone:zone];
        copy.htmlUrl = [self.htmlUrl copyWithZone:zone];
        copy.stargazersUrl = [self.stargazersUrl copyWithZone:zone];
        copy.hasPages = self.hasPages;
        copy.assigneesUrl = [self.assigneesUrl copyWithZone:zone];
        copy.compareUrl = [self.compareUrl copyWithZone:zone];
        copy.fullName = [self.fullName copyWithZone:zone];
        copy.tagsUrl = [self.tagsUrl copyWithZone:zone];
        copy.releasesUrl = [self.releasesUrl copyWithZone:zone];
        copy.pushedAt = [self.pushedAt copyWithZone:zone];
        copy.labelsUrl = [self.labelsUrl copyWithZone:zone];
        copy.downloadsUrl = [self.downloadsUrl copyWithZone:zone];
        copy.defaultBranch = [self.defaultBranch copyWithZone:zone];
        copy.stargazersCount = self.stargazersCount;
        copy.watchersCount = self.watchersCount;
    }
    
    return copy;
}

+ (NSArray*)arrayWithResultsArray:(NSArray*)array
{
    NSMutableArray* tempArray = [NSMutableArray arrayWithCapacity:array.count];
    for (NSDictionary* dictionary in array)
    {
        [tempArray addObject:[self modelObjectWithDictionary: dictionary]];
    }
    return [NSArray arrayWithArray:tempArray];
}


@end
