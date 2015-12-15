//
//  NSObject+ReflectProperty.h
//  OBJPropertyDemo
//
//  Created by Cobb on 15/12/15.
//  Copyright © 2015年 Cobb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ReflectProperty)

/**
 * @brief 获取对象所有属性
 */
- (NSArray*)propertyKeys;

/**
 * @brief 设置对象所有属性
 * @param dataSource可以是字典，也可以是响应key的运行期方法的类
 */
- (BOOL)reflectDataFromOtherObject:(NSObject*)dataSource;

@end
