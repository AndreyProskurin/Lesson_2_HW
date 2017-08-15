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
        
        NSMutableArray *arrayOfRandomNumbers = [[NSMutableArray alloc] init];
        
        for (NSInteger i = 0; i < 100; i++) {
            NSInteger randomValue = arc4random() % 120;
            [arrayOfRandomNumbers addObject:@(randomValue)];
        }
        
        NSNumber *min = arrayOfRandomNumbers[0];
        NSNumber *max;
        
        for (NSInteger i = 0; i < 100; i++) {
            if (arrayOfRandomNumbers[i] < min) {
                min = arrayOfRandomNumbers[i];
            } else if (arrayOfRandomNumbers[i] >= max) {
                max = arrayOfRandomNumbers[i];
            }
        }
        
        [arrayOfRandomNumbers sortUsingSelector:@selector(compare:)];  // Не получилось с сортировкой :(
        
        // Не получилось.
        
//        for (NSInteger i = 0; i < arrayOfRandomNumbers.count - 1; i++) {
//            for (NSInteger j = 0; j < i; j++) {
//                if ([arrayOfRandomNumbers[i] integerValue] > [arrayOfRandomNumbers[i+1] integerValue]) {
//                    NSNumber *temp = arrayOfRandomNumbers[j];
//                    arrayOfRandomNumbers[j] = arrayOfRandomNumbers[j+1];
//                    arrayOfRandomNumbers[j+1] = temp;
//
//                }
//            }
//
//        }
        
        NSLog(@"Capacity of the array = %ld", arrayOfRandomNumbers.count);
        NSLog(@"Minimum = %@; Maximum = %@.", min, max);
        
        NSMutableString *resultMutableString = [NSMutableString new];
        for (NSInteger i = 0; i < arrayOfRandomNumbers.count; i++) {

            [resultMutableString appendString:[arrayOfRandomNumbers[i] stringValue]];
            [resultMutableString appendString:@" | "];
        }
        
        NSLog(@"\n\nRESULT: %@", resultMutableString);
    }
    return 0;
}
