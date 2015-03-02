//
//  CalculatorModel.h
//  Calculator
//
//  Created by Gor Avakyan on 21.02.15.
//  Copyright (c) 2015 Gor Avakyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalculatorModel : NSObject

@property (copy, nonatomic) NSString *operation;
@property (nonatomic) CGFloat currendOperand;

- (CGFloat)performOperand:(CGFloat)operand;

@end
