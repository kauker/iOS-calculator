//
//  CalculatorModel.m
//  Calculator
//
//  Created by Gor Avakyan on 21.02.15.
//  Copyright (c) 2015 Gor Avakyan. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

- (CGFloat)performOperand:(CGFloat)operand
{
    CGFloat value = self.currendOperand;
    
    if ([self.operation isEqualToString:@"x"]) {
        value *= operand;
    }
    else if ([self.operation isEqualToString:@"/"]) {
        value /= operand;
    }
    else if ([self.operation isEqualToString:@"+"]) {
        value += operand;
    }
    else if ([self.operation isEqualToString:@"-"]) {
        value -= operand;
    }
    
    return value;
}

@end
