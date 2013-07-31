//
//  ORCDiscountTests.m
//  ORCDiscountTests
//
//  Created by Basil Shkara on 31/07/13.
//  Copyright (c) 2013 Neat.io. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <ORCDiscount/ORCDiscount.h>

@interface ORCDiscountTests : XCTestCase

@end

@implementation ORCDiscountTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
	NSString *markdown = @"*emphasised text*";
	NSString *HTML = [markdown orc_HTMLFromMarkdown];
	NSLog(@"%@", HTML);
	XCTAssertNotNil(HTML, @"Didn't convert markdown text");
}

@end
