//
//  ViewController.m
//  “我的”页面框架
//
//  Created by ee on 16/11/29.
//  Copyright © 2016年 ee. All rights reserved.
//

#import "ViewController.h"
#import "lxExampleController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    lxExampleController *example = [[lxExampleController alloc]init];
    [self.navigationController pushViewController:example animated:YES];
}
@end
