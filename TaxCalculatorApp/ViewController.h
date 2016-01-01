//
//  ViewController.h
//  TaxCalculatorApp
//
//  Created by Matt Deuschle on 12/30/15.
//  Copyright © 2015 Matt Deuschle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// outlets for label and texfield from Storyboard
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UITextField *enterPriceTextField;

// action from textfield to dismiss keyboard
- (IBAction)dismissKeyboard:(id)sender;

// outlet for segmented control
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

// action when calculate button pressed
- (IBAction)onCalculatePressed:(id)sender;

// objects for the 3 different tax rates
@property double caTax;
@property double chiTax;
@property double nyTax;

// object for the value user enters
@property int enteredValue;

@end

