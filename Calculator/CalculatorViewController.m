//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Cesar Canassa on 2/4/13.
//  Copyright (c) 2013 Cesar Canassa. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorControl.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize Display = _Display;
@synthesize calculator = _calculator;

- (IBAction)NumberPressed:(UIButton *)sender {
    [self.calculator pushToStack:[sender.titleLabel.text doubleValue]];
    [self updateDisplay];
    NSLog(sender.titleLabel.text);
}

- (void)updateDisplay {
    self.Display.text = [NSString stringWithFormat:@"%f", [self.calculator peekStack]];
}

- (IBAction)operationPressed:(UIButton *)sender {
    NSLog(@"Operation");
}

- (CalculatorControl *)calculator {
    if (!_calculator) _calculator = [[CalculatorControl alloc] init];
    return _calculator;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateDisplay];
}

@end
