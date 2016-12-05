//
//  NetworkingProcessing.h
//  GitHubViever
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModels.h"

@interface NetworkingProcessing : NSObject
/**
 *  Retrieve list of gitHub reopositories for user declared in url
 *
 *  @param completitionBlock sucsessful retriving data from responce
 *  @param errorBlock        error processing from responce
 */
-(void)retrieveRepositoryList:(void(^)(NSArray* data))completitionBlock onError:(void(^)(NSError* error))errorBlock;


/**
 *   Retrieve list of gitHub reopositories for user declared in url customazable by setting
 *
 *  @param completitionBlock completitionBlock sucsessful retriving data from responce
 *  @param errorBlock        error processing from responce
 *  @param page              current page for retriving
 *  @param perPage           custom page size up to 100
 */
-(void)retrieveRepositoryList:(void(^)(NSArray* data))completitionBlock onError:(void(^)(NSError* error))errorBlock forPage:(NSUInteger)page perPage:(NSUInteger)perPage;

@end
