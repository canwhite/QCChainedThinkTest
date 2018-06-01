//
//  NSObject+Calculate.h
//  QCChainedThink
//
//  Created by EricZhang on 2018/6/1.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QCCalcuTool.h"


/*
 链式编程
 是将多个操作(多行代码)通过(.)链接在一起成为一行代码，使得代码可读性变得更好
 这里我们需要block作为参数和返回值
 关于返回值
 方法的返回值是block，block必须有返回值
 
 */

@interface NSObject (Calculate)


//计算
+(int)makeCaculator:(void(^)(QCCalcuTool *make))calu;




@end
