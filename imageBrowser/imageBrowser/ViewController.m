//
//  ViewController.m
//  imageBrowser
//
//  Created by JiangBo on 14-11-9.
//  Copyright (c) 2014年 JiangBo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, assign) int index;
@property (nonatomic, strong) NSArray *imageDict;

@end

@implementation ViewController

- (NSArray*)imageDict
{
    if (!_imageDict) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"imageDate" ofType:@"plist"];
        _imageDict = [NSArray arrayWithContentsOfFile:path];
    }
    return _imageDict;
}

- (IBAction)leftBtnOnClick:(UIButton *)sender {
    self.index --;
    [self onClickChange];
}

- (IBAction)rightBtnOnClick:(UIButton *)sender {
    self.index ++;
    [self onClickChange];
}


- (void)onClickChange
{
    self.topLabel.text = [NSString stringWithFormat:@"%d/%d", (self.index+1), (NSInteger)(self.imageDict.count)];
    self.descLabel.text = self.imageDict[self.index][@"description"];
    self.imageView.image = [UIImage imageNamed:self.imageDict[self.index][@"name"]];
    self.leftBtn.enabled = (self.index != 0);
    self.rightBtn.enabled = (self.index != 4);
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
