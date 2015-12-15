//
//  ChinaTeacher.m
//  OBJPropertyDemo
//
//  Created by Cobb on 15/12/15.
//  Copyright © 2015年 Cobb. All rights reserved.
//

#import "ChinaTeacher.h"

@implementation ChinaTeacher

/**
 * @brief 实现类描述方法，便于调试
 */
-(NSString *)description
{
    return [NSString stringWithFormat:@"<ChinaTeacher name is %@\nChinaTeacher school is %@\nChinaTeacher age is %lu\nChinaTeacher boyFriend is %@\nChinaTeacher girlFriend is %@\nChinaTeacher homeAddress is %@\nChinaTeacher schoolAddress is %@\nChinaTeacher studentsName is %@\nChinaTeacher securityInfo is %@\n ChinaTeacher pointer is %p>",self.name,self.school,self.age,self.boyFriend,self.girlFriend,self.homeAddress,self.schoolAddress,self.studentsName,self.securityInfo,self];
}

@end
