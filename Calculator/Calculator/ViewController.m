//
//  ViewController.m
//  Calculator
//
//  Created by JiangBo on 14-11-16.
//  Copyright (c) 2014年 JiangBo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textNumOne;
@property (weak, nonatomic) IBOutlet UITextField *textNumTwo;
@property (weak, nonatomic) IBOutlet UILabel *resultNum;
@property (weak, nonatomic) IBOutlet UIButton *calcBtn;
@property (weak, nonatomic) IBOutlet UIButton *zeroBtn;

@end

@implementation ViewController

- (IBAction)calcHandle:(UIButton *)sender {
    int oneNum = [self.textNumOne.text intValue];
    int twoNum = [self.textNumTwo.text intValue];
    int resNum = oneNum + twoNum;
    
    self.resultNum.text = [NSString stringWithFormat:@"%d", resNum];
    //[self.resultNum setText:resStr];
}

- (IBAction)zeroHandle:(UIButton *)sender {
    [self.textNumOne setText:@""];
    [self.textNumTwo setText:@""];
    [self.resultNum setText:@"0"];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
