//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by Matt Deuschle on 12/30/15.
//  Copyright © 2015 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 3 tax rates assigned to objects
    self.caTax = 0.075;
    self.nyTax = 0.045;
    self.chiTax = 0.0925;
}

// helper method for calculation
-(void)onCalculateMethod
{
    // save the value entered by user
    NSString *enteredText = self.enterPriceTextField.text;
    self.enteredValue = enteredText.intValue;

    // run through the 3 different options
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = self.enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }

    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = self.enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else
    {
        double result = self.enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
}

// dismiss keyboard
- (IBAction)dismissKeyboard:(id)sender {
    [self resignFirstResponder];

    // calculate if return button (on keyboard)
    [self onCalculateMethod];
}

// calculate if calculate button pressed
- (IBAction)onCalculatePressed:(id)sender {
    [self onCalculateMethod];
}
@end
