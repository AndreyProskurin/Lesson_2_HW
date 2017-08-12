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
        
        // Cycles
        
        // For-cycle
        
        for (NSInteger i = 0; i <=20; i++) {
            if (i % 5 == 0 && i != 0) {
                NSLog(@"Число %ld кратно 5.", i);
            }
        }
        
        // Do-While cycle
        
        NSInteger count = 0;
        
        do {
            count += 7;
            count++;
        } while (count < 50);
        
        NSLog(@"%ld", count);
        NSLog(@"Numbers of this cycle's iterations is %ld.", count / 7);
        
        // While-cycle
        
        count = 0;
        
        while (count < 100) {
            count += 3;
            if (count > 30) {
                NSLog(@"\"count\" = %ld. It's more than 30, so we have broken this cycle.", count);
                break;
            }
        }
    }
    return 0;
}
