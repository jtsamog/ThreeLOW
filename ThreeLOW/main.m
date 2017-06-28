//
//  main.m
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *input = [[InputHandler alloc]init];
        
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        while (YES) {
            NSString *userResponse = [input getUserPrompt:@" \n Please type 'roll' to roll a die"];
            if ([userResponse isEqualToString:@"roll"]) {
                
                die1.dieNumber1To5 = [die1 randomize];
                die2.dieNumber1To5 = [die2 randomize];
                die3.dieNumber1To5 = [die3 randomize];
                die4.dieNumber1To5 = [die4 randomize];
                die5.dieNumber1To5 = [die5 randomize];
                
                NSLog(@"%@, %@, %@, %@, %@",die1.dieNumber1To5, die2.dieNumber1To5, die3.dieNumber1To5,die4.dieNumber1To5,die5.dieNumber1To5);
            }
            
        }
        
        
        
    }
    return 0;
}
