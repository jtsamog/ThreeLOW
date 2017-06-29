//
//  GameController.m
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "GameController.h"

@implementation GameController
-(instancetype)init{
    self = [super init];
    if (self) {
        _numbersHeld = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)holdDie:(NSNumber *)heldNumber{
    [self.numbersHeld addObject:heldNumber];
}

-(void)unHoldDie:(NSNumber *)inputNumber{
    if ([self.numbersHeld containsObject:inputNumber]) {
        [self.numbersHeld removeObject:inputNumber];
    }
}
-(void)resetDice{
    [self.numbersHeld removeAllObjects];
}

-(NSInteger)score{
    NSInteger total = 0;
    for (NSNumber *number in self.numbersHeld) {
        total += [number intValue];
    }
    return total;
}
@end
