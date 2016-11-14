//
//  ViewController.m
//  BillSplitter
//
//  Created by Victor Hong on 12/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UISlider *amountBillSplitSlider;
@property (weak, nonatomic) IBOutlet UILabel *displaySplitBillLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateSplitAmount:(UIButton *)sender {
    
    [self calculateAmount];
    
}
- (IBAction)changeLabelWithSlider:(UISlider *)sender {
    
    [self calculateAmount];
    
}

- (IBAction)changeLabelWithText:(UITextField *)sender {
    
    [self calculateAmount];
    
}

-(void)calculateAmount {
    
    float splitAmount = [self.billAmountTextField.text floatValue];
    float billSplit = self.amountBillSplitSlider.value;
    float billWithTip = (splitAmount * 1.15) / billSplit;
    
    self.displaySplitBillLabel.text = [NSString stringWithFormat:@"$%0.2f", billWithTip];
    
}

@end
