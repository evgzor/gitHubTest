//
//  NetworkingProcessing.m
//  GitHubViever
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import "NetworkingProcessing.h"
#import "AFNetworking.h"

NSString *const kXINGReposUrl = @"https://api.github.com/users/xing/repos";
NSString *const kPersonalToken = @"?access_token=";


@implementation NetworkingProcessing

-(void)retrieveRepositoryList:(void(^)(NSArray* dataArray))completitionBlock onError:(void(^)(NSError* error))errorBlock
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    configuration.requestCachePolicy = NSURLRequestReturnCacheDataElseLoad;
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",kXINGReposUrl,kPersonalToken]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            errorBlock(error);
        } else {
            
            NSArray* dataArray = [ReposData arrayWithResultsArray: responseObject];
            
            completitionBlock(dataArray);
            
            
        }
    }];
    [dataTask resume];
}

-(void)retrieveRepositoryList:(void(^)(NSArray* data))completitionBlock onError:(void(^)(NSError* error))errorBlock forPage:(NSUInteger)page perPage:(NSUInteger)perPage
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    configuration.requestCachePolicy = NSURLRequestReturnCacheDataElseLoad;
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@&page=%lu&per_page=%lu",kXINGReposUrl,kPersonalToken,(unsigned long)page,(unsigned long)perPage]];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            errorBlock(error);
        } else {
            
            NSArray* dataArray = [ReposData arrayWithResultsArray: responseObject];
            
            completitionBlock(dataArray);
            
            
        }
    }];
    [dataTask resume];
}

@end
