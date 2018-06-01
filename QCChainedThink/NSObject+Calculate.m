//
//  NSObject+Calculate.m
//  QCChainedThink
//
//  Created by EricZhang on 2018/6/1.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "NSObject+Calculate.h"

@implementation NSObject (Calculate)
/*
block参数的参数是方法类，在这里直接拿到方法类，并调用了参数block，赋值给他，实现在VC中
 
实现的时候，首先我们会拿到本类调用时传过去的tool工具类
 
拿到tool，我们就可以调用其中的方法了，至于你在实现中调用多少次，看你自己的想法
 
最终实现的返回值就是tool中的result
 
*/
+(int)makeCaculator:(void (^)(QCCalcuTool *))calu{
    
    QCCalcuTool *tool = [QCCalcuTool new];
    calu(tool);//block调用,等待最终实现,实现在VC中
    return tool.result; //实现后返回结果
}


@end
