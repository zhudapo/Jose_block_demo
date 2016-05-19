//
//  ViewController.m
//  block_demo
//
//  Created by Jose Zhu on 16/4/29.
//  Copyright © 2016年 Jose Zhu. All rights reserved.
//

#import "ViewController.h"
#import "textFieldViewController.h"
#import <CoreImage/CoreImage.h>

@interface ViewController ()<textFieldViewControllerDelegate>
@property (nonatomic, strong) UILabel *label;
@property (weak, nonatomic) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, 50, 100, 50)];
    _label.backgroundColor = [UIColor blueColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, 100, 50, 50)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(pushNewCV:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_label];
    [self.view addSubview:btn];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   }

- (void)pushNewCV:(UIButton *)btn
{
    textFieldViewController *send = [[textFieldViewController alloc]init];
    send.delegate = self;
    send.textCallback = ^(NSString *text){
        [self.label setText:text];
        [_label setTextColor:[UIColor redColor]];
        
    };
    
    [self presentModalViewController:send animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _label.frame = CGRectMake(self.view.frame.size.width-50, 200, 100, 50);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //_label.frame = CGRectMake(self.view.frame.size.width-50, 150, 100, 50);
}

- (void)changetitle:(textFieldViewController *)controller name:(NSString *)name
{
    [self.label setText:name];
    [_label setTextColor:[UIColor redColor]];
}

@end
