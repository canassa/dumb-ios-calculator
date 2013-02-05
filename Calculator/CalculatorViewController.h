//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Cesar Canassa on 2/4/13.
//  Copyright (c) 2013 Cesar Canassa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorControl.h"

@interface CalculatorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Display;
@property (nonatomic, strong) CalculatorControl *calculator;

@end
