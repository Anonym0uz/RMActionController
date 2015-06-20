//
//  RMActionTests.m
//  RMActionController-Demo
//
//  Created by Roland Moers on 20.06.15.
//  Copyright © 2015 Roland Moers. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "RMActionController.h"

@interface RMActionTests : XCTestCase

@end

@implementation RMActionTests

- (void)testCreatingActionWithTitle {
    RMAction *action = [RMAction actionWithTitle:@"TestAction" style:RMActionStyleDefault andHandler:nil];
    
    XCTAssertEqual(action.style, RMActionStyleDefault);
    XCTAssertEqualObjects(action.title, @"TestAction");
    XCTAssertNil(action.image);
    XCTAssertTrue(action.dismissesActionController);
}

- (void)testCreatingActionWithImage {
    RMAction *action = [RMAction actionWithImage:[[UIImage alloc] init] style:RMActionStyleDefault andHandler:nil];
    
    XCTAssertEqual(action.style, RMActionStyleDefault);
    XCTAssertNil(action.title);
    XCTAssertNotNil(action.image);
    XCTAssertTrue(action.dismissesActionController);
}

- (void)testCreatingDoneAction {
    RMAction *action = [RMAction actionWithTitle:@"TestAction" style:RMActionStyleDone andHandler:nil];
    
    XCTAssertEqual(action.style, RMActionStyleDone);
}

- (void)testCreatingCancelAction {
    RMAction *action = [RMAction actionWithTitle:@"TestAction" style:RMActionStyleCancel andHandler:nil];
    
    XCTAssertEqual(action.style, RMActionStyleCancel);
}

- (void)testCreatingAdditionalAction {
    RMAction *action = [RMAction actionWithTitle:@"TestAction" style:RMActionStyleAdditional andHandler:nil];
    
    XCTAssertEqual(action.style, RMActionStyleAdditional);
}

- (void)testCreatingNonDismissingAction {
    RMAction *action = [RMAction actionWithTitle:@"TestAction" style:RMActionStyleDefault andHandler:nil];
    
    XCTAssertTrue(action.dismissesActionController);
    
    action.dismissesActionController = NO;
    
    XCTAssertFalse(action.dismissesActionController);
}

@end
