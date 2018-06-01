//
//  QCCalcuTool.m
//  QCChainedThink
//
//  Created by EricZhang on 2018/6/1.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "QCCalcuTool.h"

@implementation QCCalcuTool

//加法
-(QCCalcuTool *(^)(int))add{
    
    //返回值的实现，参数是加的参数值
    return ^ QCCalcuTool * (int value){
        
        //把值加到一起给result，方便多态方法中调用
        _result += value;
        
        //返回自身，相当于以自身为起点，往后加了一环，这个是链表的核心，注意了解
        //然后再在以新加的一环自身的起点上，继续去加，我们就可以利用点语法去做事情了
        return self;
        
    };
}


//减法
-(QCCalcuTool *(^)(int))sub{
    
    return ^ QCCalcuTool *(int value){
        
        _result -= value;
        return self;
    };
}

//乘法
-(QCCalcuTool *(^)(int))mul{
    
    return ^ QCCalcuTool *(int value){
        
        _result *= value;
        return self;
        
    };
}


//除法

-(QCCalcuTool *(^)(int))div{
    
    return ^ QCCalcuTool *(int value){
        
        if (value == 0) {
            //如果是0的话相当于没做操作，必要的时候可以提示一下
            //这里应该等于正无穷或者负无穷，不知道咋写，就让它不变吧  _result = +
            return self;
        }
        _result /= value;
        return self;
    };
    
}








@end
