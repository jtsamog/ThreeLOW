//
//  InputHandler.m
//  ThreeLOW
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString *)getUserPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString); //prompt for user input
    
    //use fgets to get user input from stdin
    char userChar[255];
    fgets(userChar, 255, stdin);
    
    //return user input as NSString
    NSString *inputString = [[NSString stringWithCString:userChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputString;
    
    
    
}
@end
