//
//  ViewController.m
//  OBJPropertyDemo
//
//  Created by Cobb on 15/12/15.
//  Copyright © 2015年 Cobb. All rights reserved.
//

#import "ViewController.h"
#import "ChinaTeacher.h"
#import "NSObject+ReflectProperty.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *school;
@property (weak, nonatomic) IBOutlet UILabel *age;
@property (weak, nonatomic) IBOutlet UILabel *homeAdress;
@property (weak, nonatomic) IBOutlet UILabel *studensName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //通过属性objc_property_t进行对象赋值操作
    NSDictionary *infoDictionary = @{
                                     @"name":@"WangXiaoYa",
                                     @"school":@"TingHuaDaxue",
                                     @"age":@28,
                                     @"boyFriend":@"HuangHun",
                                     @"girlFriend":@"",
                                     @"homeAddress":@"HuaQiangRoad",
                                     @"schoolAddress":@"HuaQiangNorth",
                                     @"studentsName":@[@"XiaoEr",@"XiaoSan",@"XiaoSi",@"XiaoYi"],
                                     @"securityInfo":@{@"Style":@"MeiMei",@"Love":@"OnlyOne"},
                                     };
    
    ChinaTeacher *dearTeacher = [[ChinaTeacher alloc]init];
    [dearTeacher reflectDataFromOtherObject:infoDictionary];
    NSLog(@"dearTeacher is %@",dearTeacher);
    
    //刷新UI
    self.name.text = dearTeacher.name;
    self.school.text = dearTeacher.school;
    self.age.text = [NSString stringWithFormat:@"%@",@(dearTeacher.age)];
    self.homeAdress.text = dearTeacher.homeAddress;
    self.studensName.text = dearTeacher.studentsName[0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
