//
//  textFieldViewController.h
//  block_demo
//
//  Created by Jose Zhu on 16/4/29.
//  Copyright © 2016年 Jose Zhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class textFieldViewController;
typedef void(^ReturnTextBlock)(NSString *text);
@protocol textFieldViewControllerDelegate <NSObject>

- (void)changetitle:(textFieldViewController *)controller name:(NSString *)name;

@end

@interface textFieldViewController : UIViewController

@property (nonatomic, strong)ReturnTextBlock textCallback;
@property (nonatomic, weak) id<textFieldViewControllerDelegate> delegate;

@end
