//
//  EDColorHexTest.m
//  color
//
//  Created by Andrew Sliwinski on 9/15/12.
//  Copyright (c) 2012 Andrew Sliwinski. All rights reserved.
//

#import "EDColorHexTest.h"
#import "UIColor+Hex.h"

@implementation EDColorHexTest

#pragma mark - UInt32

- (void)testBlackInt
{
    UIColor *color = [UIColor colorWithHex:0x000000];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 1.0f, TEST_ACCURACY, nil);
}

- (void)testWhiteInt
{
    UIColor *color = [UIColor colorWithHex:0xFFFFFF];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 1.0f, TEST_ACCURACY, nil);
}

- (void)testAlphaInt
{
    UIColor *color = [UIColor colorWithHex:0xFFFFFF andAlpha:0.8];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 0.8f, TEST_ACCURACY, nil);
}

#pragma mark - String

- (void)testRedString
{
    UIColor *color = [UIColor colorWithHexString:@"f00"];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 1.0f, TEST_ACCURACY, nil);
}

- (void)testGreenString
{
    UIColor *color = [UIColor colorWithHexString:@"0F0"];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 1.0f, TEST_ACCURACY, nil);
}

- (void)testBlueString
{
    UIColor *color = [UIColor colorWithHexString:@"0000ff"];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 0.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 1.0f, TEST_ACCURACY, nil);
}

- (void)testAlphaString
{
    UIColor *color = [UIColor colorWithHexString:@"ffffffcc"];
    
    SPLIT_RESULT_TO_RGBA
    
    STAssertEqualsWithAccuracy(red, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(green, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(blue, 1.0f, TEST_ACCURACY, nil);
    STAssertEqualsWithAccuracy(alpha, 0.8f, TEST_ACCURACY, nil);
}

@end
