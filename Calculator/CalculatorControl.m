//
//  CalculatorControl.m
//  Calculator
//
//  Created by Cesar Canassa on 2/4/13.
//  Copyright (c) 2013 Cesar Canassa. All rights reserved.
//

#import "CalculatorControl.h"

@implementation CalculatorControl

@synthesize stack = _stack;

- (NSMutableArray *)stack {
    if (_stack == nil) {
        _stack = [[NSMutableArray alloc] init];
        [self pushToStack:0.0];
    }
    return _stack;
}

- (void)setStack:(NSMutableArray *)stack {
    _stack = stack;
}

- (double)peekStack {
    return [[self.stack lastObject] doubleValue];
}

- (double)popStack {
    double number = [self peekStack];
    [self.stack removeLastObject];
    return number;
}

- (void)pushToStack:(double)number {
    [self.stack addObject:[NSNumber numberWithDouble:number]];
}

@end
