//
//  PaintingTests.m
//  PaintingTests
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "Dot.h"
#import "Stroke.h"

@interface PaintingTests : XCTestCase

@end

@implementation PaintingTests

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
    
    Stroke* _stroke = [[Stroke alloc] init];
    _stroke.color = [UIColor redColor];
    _stroke.size = 5.0f;
    Dot* dotStart = [[Dot alloc] initWithLocation:CGPointZero];
    dotStart.color = [UIColor blackColor];
    dotStart.size = 10.0f;
    Dot* dotEnd = [[Dot alloc] initWithLocation:CGPointMake(100, 100)];
    dotEnd.color = [UIColor blackColor];
    dotStart.size = 10.0f;
    [_stroke addMark:dotStart];
    [_stroke addMark:dotEnd];
    
    id<Mark> temMark = [_stroke copy];
    
    NSLog(@"此处断点比较深度拷贝对象以及属性地址");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
