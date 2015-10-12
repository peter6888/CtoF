//
//  CtoFTests.m
//  CtoFTests
//
//  Created by Peter Li on 8/14/15.
//  Copyright (c) 2015 Peter Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface CtoFTests : XCTestCase

@end

@implementation CtoFTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testGetLocalizedString {
    NSString *localizedString = NSLocalizedString(@"bodytable", nil);
    NSLog(localizedString);
    XCTAssertNotNil(localizedString);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
