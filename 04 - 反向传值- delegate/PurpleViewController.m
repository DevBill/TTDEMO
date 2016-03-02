//
//  PurpleViewController.m
//  04 - 反向传值- delegate
//
//  Created by gouyuankai on 15/12/29.
//  Copyright © 2015年 GYK. All rights reserved.
//

#import "PurpleViewController.h"

@interface PurpleViewController ()<UITextFieldDelegate>

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor purpleColor];
    
    //1.创建
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(30, 40, 300, 40)];
    textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
    
    //2.设置代理
    textField.delegate = self;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //textField.text传给第一个界面的label显示
    //谁是数据的发送方?? purple 协议delegate属性写在数据的发送方
    //purple就是委托方 委托代理去接受数据
    
    //1.获取数据
    NSString *str = textField.text;
    
    //2.发送数据
    //pvc.delegate = self;
    //self.delegate = viewController;
    //pvc.delegate = viewController
    [_delegate receiveStr:str];
    
    //3.让当前页面消失
    [self dismissViewControllerAnimated:YES completion:nil];
    
    return YES;
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
