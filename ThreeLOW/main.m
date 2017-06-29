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
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *input = [[InputHandler alloc]init];
        GameController *hold = [[GameController alloc] init];
        NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
        
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
                
                [numbersRolled addObject:die1.dieNumber1To5];
                [numbersRolled addObject:die2.dieNumber1To5];
                [numbersRolled addObject:die3.dieNumber1To5];
                [numbersRolled addObject:die4.dieNumber1To5];
                [numbersRolled addObject:die5.dieNumber1To5];
                
                
                NSString *formatArray = [hold.numbersHeld componentsJoinedByString:@","];
                
                NSLog(@"\n Die 1) is:%@ %@\n Die 2) is:%@ %@\n Die 3) is:%@ %@\n Die 4) is:%@ %@\n Die 5) is:%@ %@\n Your current held die are: %@\n Your current score is: %zd\n",
                      die1.dieNumber1To5,[die1 dieValue:die1.dieNumber1To5],
                      die2.dieNumber1To5,[die2 dieValue:die2.dieNumber1To5],
                      die3.dieNumber1To5,[die3 dieValue:die3.dieNumber1To5],
                      die4.dieNumber1To5,[die4 dieValue:die4.dieNumber1To5],
                      die5.dieNumber1To5,[die5 dieValue:die4.dieNumber1To5],
                      formatArray, [hold score]);
                
                
                while (YES) {
                    
                    NSString *holdResult = [input getUserPrompt:@"\nTo hold a number type which die it is. \nType 'show' to show which numbers are currently held \nType 'unhold' to unhold certain die. \nType 'reset' to reset all your held die. \nType 'back' to roll again."];
                    
                    if ([holdResult isEqualToString:@"1"]) {
                        [hold holdDie:die1.dieNumber1To5];
                    } else if ([holdResult isEqualToString:@"2"]) {
                        [hold holdDie:die2.dieNumber1To5];
                    } else if ([holdResult isEqualToString:@"3"]){
                        [hold holdDie:die3.dieNumber1To5];
                    } else if ([holdResult isEqualToString:@"4"]) {
                        [hold holdDie:die4.dieNumber1To5];
                    } else if ([holdResult isEqualToString:@"5"]) {
                        [hold holdDie:die5.dieNumber1To5];
                        
                    } else if ([holdResult isEqualToString:@"back"]) {
                        break;
                        
                    } else if ([holdResult isEqualToString:@"show"]) {
                        NSString *formatArray = [hold.numbersHeld componentsJoinedByString:@","];
                        NSLog(@"\n[%@]\n", formatArray);
                        
                    } else if ([holdResult isEqualToString:@"reset"]) {
                        [hold resetDice];
                        NSLog(@"\nArray has been reset\n");
                        
                    } else if ([holdResult isEqualToString:@"unhold"]) {
                        while (YES) {
                            NSString *unholdResult = [input getUserPrompt:@"\nType the number would like to unhold? Type 'back' to go back."];
                            
                            if ([unholdResult isEqualToString:@"1"]) {
                                [hold unHoldDie:[NSNumber numberWithInt:1]];
                            } else if ([unholdResult isEqualToString:@"2"]) {
                                [hold unHoldDie:[NSNumber numberWithInt:2]];
                            } else if ([unholdResult isEqualToString:@"3"]){
                                [hold unHoldDie:[NSNumber numberWithInt:3]];
                            } else if ([unholdResult isEqualToString:@"4"]) {
                                [hold unHoldDie:[NSNumber numberWithInt:4]];
                            } else if ([unholdResult isEqualToString:@"5"]) {
                                [hold unHoldDie:[NSNumber numberWithInt:5]];
                            } else if ([unholdResult isEqualToString:@"6"]) {
                                [hold unHoldDie:[NSNumber numberWithInt:6]];
                            } else if ([unholdResult isEqualToString:@"back"]){
                                break;
                            } else {
                                NSLog(@"\nSorry, invalid request\n");
                            }
                        }
                    } else {
                        NSLog(@"\nSorry, invalid request\n");
                    }
                }
//                NSLog(@"%@, %@, %@, %@, %@",die1.dieNumber1To5, die2.dieNumber1To5, die3.dieNumber1To5,die4.dieNumber1To5,die5.dieNumber1To5);
            }
            
        }
        
        
        
    }
    return 0;
}
