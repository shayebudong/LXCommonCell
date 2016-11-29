//
//  lxExampleController.m
//  “我的”页面框架
//
//  Created by ee on 16/11/29.
//  Copyright © 2016年 ee. All rights reserved.
//

#import "lxExampleController.h"

@interface lxExampleController ()

@end

@implementation lxExampleController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupGroups];
    
}
-(void)setupGroups
{
    [self setupGroup0];
    [self setupGroup1];
}

-(void)setupGroup0
{
    lxCommonGroup *group = [lxCommonGroup group];
    [self.groups addObject:group];
    
    lxCommonArrowItem *member = [lxCommonArrowItem itemWithTitle:@"家庭成员" icon:@"ic_family_member"];
    //member.destClass =  [lxMemberController class];
    
    lxCommonArrowItem *device = [lxCommonArrowItem itemWithTitle:@"设备管理" icon:@"ic_fitness"];
    lxCommonArrowItem *healthAwnser = [lxCommonArrowItem itemWithTitle:@"健康问答" icon:@"ic_health_inquery"];
    lxCommonArrowItem *me = [lxCommonArrowItem itemWithTitle:@"我的收藏" icon:@"ic_favor"];
    me.operation = ^{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"没有收藏" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    };
    
    
    lxCommonArrowItem *casefile = [lxCommonArrowItem itemWithTitle:@"病例夹" icon:@"ic_dossier"];
    group.items = @[member,device,healthAwnser,me,casefile];
}

-(void)setupGroup1
{
    lxCommonGroup *group = [lxCommonGroup group];
    [self.groups addObject:group];
    
    lxCommonArrowItem *setting = [lxCommonArrowItem itemWithTitle:@"设置" icon:nil];
    
    group.items = @[setting];
}

@end
