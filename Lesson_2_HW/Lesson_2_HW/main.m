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
        
        // Coffee Prices
        
        CGFloat priceOfLatte = 15.5f;
        CGFloat priceOfCappuccino = 14.5f;
        NSInteger priceOfEspresso = 13;
        NSInteger priceOfAmericano = 14;
        
        NSInteger currentClientsCount = 15; // Текущее количество клиентов кофейни
        NSInteger oneHourAgoClientsCount = 23; // Количество клиентов час назад
        
        // проданного количества каждого вида кофе
        
        NSInteger latteSoldCount  = 4;
        NSInteger cappuccinoSoldCount = 5;
        NSInteger espressoSoldCount = 3;
        NSInteger americanoSoldCount = 7;
        
        NSInteger coffeeSoldAtTheMorning = 0;
        
        coffeeSoldAtTheMorning = latteSoldCount + cappuccinoSoldCount + espressoSoldCount + americanoSoldCount;
        NSLog(@"At the morning were sold: %ld latte, %ld cappucino, %ld espresso, %ld americano. Total: %ld cups.", latteSoldCount, cappuccinoSoldCount, espressoSoldCount, americanoSoldCount, coffeeSoldAtTheMorning);
        
        cappuccinoSoldCount++;
        cappuccinoSoldCount++;
        cappuccinoSoldCount++;
        americanoSoldCount++;
        americanoSoldCount++;
        americanoSoldCount++;
        americanoSoldCount++;
        
        NSLog(@"%ld cappuchino were sold by midday.", cappuccinoSoldCount);
        NSLog(@"%lu americano were sold by midday.", americanoSoldCount);
        
        currentClientsCount--;
        currentClientsCount--;
        currentClientsCount--;
        
        BOOL even = (currentClientsCount % 2 == 0);
        NSLog(@"Четное количество гостей? - %@.", even ? @"Yes" : @"No");
        
        if (oneHourAgoClientsCount > currentClientsCount) {
            NSLog(@"Скидка на второй кофе!!!");
        } else {
            NSLog(@"Вот ваш кофе, пожалуйста!");
        }
        
        NSInteger coffeeSoldCountThisDay = 0;
        
        coffeeSoldCountThisDay = latteSoldCount + cappuccinoSoldCount + espressoSoldCount + americanoSoldCount;
        NSLog(@"Today were sold: %ld cups of coffee.", coffeeSoldCountThisDay);
        
        CGFloat moneyEarnedThisDay = 0.f;
        
        moneyEarnedThisDay = (priceOfLatte * latteSoldCount) + (priceOfCappuccino * cappuccinoSoldCount) + (priceOfEspresso * espressoSoldCount) + (priceOfAmericano * americanoSoldCount);
        NSLog(@"Income today: %.1f UAH.", moneyEarnedThisDay);
        
    }
    return 0;
}
