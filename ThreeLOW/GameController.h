//
//  GameController.h
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray *numbersRolled;
@property (nonatomic, strong) NSMutableArray *numbersHeld;

-(void)holdDie:(NSNumber *)heldNumber;

-(void)unHoldDie:(NSNumber *)inputNumber;

-(void)resetDice;

-(NSInteger)score;
@end
