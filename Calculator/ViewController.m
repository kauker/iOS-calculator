//
//  ViewController.m
//  Calculator
//
//  Created by Gor Avakyan on 21.02.15.
//  Copyright (c) 2015 Gor Avakyan. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorModel.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) CalculatorModel *model;

@property (nonatomic) BOOL waitNextOperand;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.model = [[CalculatorModel alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onEqualPressed:(id)sender
{
    CGFloat value = [self.model performOperand:self.valueLabel.text.floatValue];
    self.valueLabel.text = [NSString stringWithFormat:@"%f", value];
    self.model.currendOperand = value;
}

- (IBAction)onClearPressed:(id)sender
{
    self.valueLabel.text = @"0";
    self.model.operation = nil;
}

- (IBAction)onOperationPressed:(UIButton *)sender
{
    self.model.operation = sender.titleLabel.text;
    self.model.currendOperand = self.valueLabel.text.floatValue;
    
    self.waitNextOperand = YES;
}

- (IBAction)onOperandPressed:(UIButton *)sender
{
    NSString *value = self.valueLabel.text;
    if ([value isEqualToString:@"0"] || self.waitNextOperand) {
        value = @"";
        self.waitNextOperand = NO;
    }
    
    value = [value stringByAppendingString:sender.titleLabel.text];
    
    self.valueLabel.text = value;
}
@end
