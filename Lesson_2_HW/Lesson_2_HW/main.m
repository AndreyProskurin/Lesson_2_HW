//
//  main.m
//  Lesson_2_HW
//
//  Created by Andrey Proskurin on 12.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Variables
        
        // BOOL
        
        BOOL isItTrue = YES;
        isItTrue = NO;
        
        NSLog(@"Now BOOL value = %hhd.", isItTrue);
        
        // NSInteger
        
        NSInteger integerValue_1 = 10;
        NSInteger integerValue_2 = -5;
        NSInteger integerResult = 0;
        
        integerResult = integerValue_1 + integerValue_2;
        NSLog(@"Result of addition = %ld.", integerResult);
        
        integerResult = integerValue_2 - integerValue_1;
        NSLog(@"Result of subtraction = %ld.", integerResult);
        
        // CGFloat
        
        CGFloat floatValue_1 = 3.3f;
        CGFloat floatValue_2 = -2.4f;
        CGFloat floatResult = 0.f;
        
        floatResult = -(floatValue_1) * floatValue_2;
        NSLog(@"Result of multiplication = %.2f.", floatResult);
        
        floatResult = floatValue_1 / floatValue_2;
        NSLog(@"Result of division = %.2f.", floatResult);
        
        // NSNumber
        
        NSNumber *unknownVariable = nil;
        
        unknownVariable = @(isItTrue);
        NSLog(@"Now unknownVariable = %@.", unknownVariable);
        
        unknownVariable = @(integerResult);
        NSLog(@"And now unknownVariable = %@.", unknownVariable);
        
        unknownVariable = [[NSNumber alloc] initWithFloat:floatResult];
        NSLog(@"And finally unknownVariable = %@.", unknownVariable);
        
        // NSString
        
        NSString *warning;
        
        warning = @"Don't press this button!!!";
        warning = @"If you press this one, the computer will switch off!";
        
        // NSArray
        
        NSArray *listOfVariables = @[@(isItTrue), @(integerResult), @(floatResult), unknownVariable, warning];
        NSLog(@"%ld.", [listOfVariables indexOfObject:unknownVariable]);
        
    }
    return 0;
}
