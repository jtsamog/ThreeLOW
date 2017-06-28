//
//  Dice.m
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "Dice.h"

@implementation Dice
-(instancetype)init{
    self = [super init];
    if (self) {
        _numbersOnDie1To6 = [[NSArray alloc] initWithObjects:@1, @2, @3, @4, @5, @6, nil];
    }
    return self;
}

-(NSString *)dieValue: (NSNumber *)dieNumber {
    NSArray *dotsOnDie = [[NSArray alloc] initWithObjects:@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    return [dotsOnDie objectAtIndex:dieNumber.integerValue-1];
}

-(NSNumber *)randomize{
    int random = arc4random_uniform((int) self.numbersOnDie1To6.count);
    return [self.numbersOnDie1To6 objectAtIndex:random];
}
@end
