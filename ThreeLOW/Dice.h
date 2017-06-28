//
//  Dice.h
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property (nonatomic, strong) NSNumber *dieNumber1To5;
@property (nonatomic, strong) NSArray *numbersOnDie1To6;

-(NSNumber *)randomize;
-(NSString *)dieValue:(NSNumber *) dieNumber;
@end
