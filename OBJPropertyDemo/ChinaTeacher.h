//
//  ChinaTeacher.h
//  OBJPropertyDemo
//
//  Created by Cobb on 15/12/15.
//  Copyright © 2015年 Cobb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChinaTeacher : NSObject

@property (nonatomic,copy) NSString *name;//姓名
@property (nonatomic,copy) NSString *school;//学校
@property (nonatomic,assign,readonly) NSInteger age;//年龄
@property (nonatomic,copy) NSString *boyFriend;//男朋友姓名
@property (nonatomic,copy) NSString *girlFriend;//女朋友姓名
@property (nonatomic,copy) NSString *homeAddress;//住址
@property (nonatomic,copy) NSString *schoolAddress;//学校地址
@property (nonatomic,copy) NSArray *studentsName;//学生姓名
@property (nonatomic,copy) NSDictionary *securityInfo;//私密信息

@end
