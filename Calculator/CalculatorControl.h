//
//  CalculatorControl.h
//  Calculator
//
//  Created by Cesar Canassa on 2/4/13.
//  Copyright (c) 2013 Cesar Canassa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorControl : NSObject

@property (nonatomic, strong) NSMutableArray *stack;

- (void)pushToStack:(double)number;
- (double)peekStack;
- (double)popStack;

@end
