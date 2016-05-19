//
//  textFieldViewController.m
//  block_demo
//
//  Created by Jose Zhu on 16/4/29.
//  Copyright © 2016年 Jose Zhu. All rights reserved.
//

#import "textFieldViewController.h"

@interface textFieldViewController ()
@property (nonatomic, strong) UITextField *textField;
@end

@implementation textFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 200, 50)];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 100)];
    btn.backgroundColor = [UIColor redColor];
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(50, 300, 200, 100)];
    btn2.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(callbackTo) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(callbackTo2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_textField];
    [self.view addSubview:btn];
    [self.view addSubview:btn2];
}

- (void)callbackTo
{
    _textCallback(_textField.text);
    [self dismissModalViewControllerAnimated:YES];
}
- (void)callbackTo2
{
    [self.delegate changetitle:self name:_textField.text];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
