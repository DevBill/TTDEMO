//
//  ViewController.m
//  04 - 反向传值- delegate
//
//  Created by gouyuankai on 15/12/29.
//  Copyright © 2015年 GYK. All rights reserved.
//

#import "ViewController.h"
#import "PurpleViewController.h"

@interface ViewController ()<DataPassDelegate>


@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor blueColor];
    
    
    //创建label添加到self.view上
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 0.618 * 100)];
    self.label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.label];
    
    //创建button添加到self.view上
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 0.618 * 100)];
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"next" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
}

- (void)click
{
    //跳转到下一个紫色界面
    //1.创建紫色界面
    PurpleViewController *pvc = [[PurpleViewController alloc] init];
    //2.self present...
    //pvc.delegate = viewController
    pvc.delegate = self;
    [self presentViewController:pvc animated:YES completion:nil];
    
    NSLog(@"修改过了");
}



//接收到数据的时候调用
- (void)receiveStr:(NSString *)str
{
    //str就是拿到的字符串数据
    self.label.text = str;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
