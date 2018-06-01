//
//  QCCalcuTool.h
//  QCChainedThink
//
//  Created by EricZhang on 2018/6/1.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface QCCalcuTool : NSObject

@property(nonatomic,assign) int result;

//加法
-(QCCalcuTool *(^)(int))add;

//减法
-(QCCalcuTool *(^)(int))sub;

//乘法
-(QCCalcuTool *(^)(int))mul;

//除法
-(QCCalcuTool *(^)(int))div;





@end
