//
//  GitHubVieverTests.m
//  GitHubVieverTests
//
//  Created by Eugene Zorin on 09/07/16.
//  Copyright © 2016 Eugene Zorin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NetworkingProcessing.h"
#import "AFNetworking.h"

static NSString *const kUrlReq = @"https://api.github.com/users/xing/repos?access_token=";
static NSTimeInterval const kTimeOut = 10.f;

@interface GitHubVieverTests : XCTestCase
@property (nonatomic,strong)  id responceObject;
@property (nonatomic,strong)  NSDictionary* staticbject;
@end

@implementation GitHubVieverTests

- (void)setUp {
    [super setUp];
    
    
    __weak typeof(self) weakSelf = self;
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:kUrlReq parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        weakSelf.responceObject = responseObject;
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        
    }];
    
    while (!self.responceObject) {
        CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.01, YES);
    }
    self.staticbject = [GitHubVieverTests dictionaryWithContentsOfJSONString:@"sampleData.json"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

+(id)dictionaryWithContentsOfJSONString:(NSString*)fileLocation{

    
    NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:fileLocation.stringByDeletingPathExtension ofType:fileLocation.pathExtension];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data
                                                options:NSJSONReadingMutableContainers error:&error];

    if (error != nil) return nil;
    return result;
}

- (void)testAListRetrive {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Request should retrive list"];
    
    [[[NetworkingProcessing alloc] init] retrieveRepositoryList:^(NSArray *dataAray) {
        
        XCTAssertGreaterThan(dataAray.count, (uint)1);
        [expectation fulfill];
    } onError:^(NSError *error) {
 
    }];
    
    [self waitForExpectationsWithTimeout:kTimeOut handler:^(NSError *error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
            XCTFail(@"Server Error");
        }
        
    }];
}

- (void)testBListRetriveByPage {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Request should retrive list"];
    
    NSUInteger pageNumber = 1;
    NSUInteger numberPagesToRetrieve = 17;
    
    [[[NetworkingProcessing alloc] init] retrieveRepositoryList:^(NSArray *data) {
        XCTAssertEqual(data.count, numberPagesToRetrieve);
        [expectation fulfill];
    } onError:^(NSError *error) {
        XCTFail(@"Server Error");
    } forPage:pageNumber perPage:numberPagesToRetrieve];
    
    [self waitForExpectationsWithTimeout:kTimeOut handler:^(NSError *error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
        }
        
    }];
}


-(void) testCParceList
{
    NSArray* dataFromFile = [ReposData arrayWithResultsArray: (NSArray*)self.staticbject];
    
    XCTAssertGreaterThan(dataFromFile.count, (uint)1);
    
    /*"id": 2399148,
    "name": "absurdity",
    "full_name": "xing/absurdity",
    "owner": {
        "login": "xing",*/
    
    ReposData* item = dataFromFile[0];
    
    XCTAssertEqual((NSInteger)item.internalBaseClassIdentifier, 2399148);
    XCTAssertEqualObjects(item.name, @"absurdity");
    XCTAssertEqualObjects(item.fullName, @"xing/absurdity");
    XCTAssertEqualObjects(item.owner.login, @"xing");
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
