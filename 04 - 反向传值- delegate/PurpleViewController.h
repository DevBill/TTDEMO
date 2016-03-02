//
//  PurpleViewController.h
//  04 - 反向传值- delegate
//
//  Created by gouyuankai on 15/12/29.
//  Copyright © 2015年 GYK. All rights reserved.
//

#import <UIKit/UIKit.h>

//协议
@protocol DataPassDelegate <NSObject>

//用到的是形参
- (void)receiveStr:(NSString *)str;


@end




@interface PurpleViewController : UIViewController


@property (nonatomic, weak) id <DataPassDelegate> delegate;


@end
