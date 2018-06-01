//
//  ViewController.m
//  QCChainedThink
//
//  Created by EricZhang on 2018/6/1.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Calculate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加的测试
    int result =[NSObject makeCaculator:^(QCCalcuTool *make) {
        make.add(1).add(2).add(3).add(4).add(5);
    }];
    NSLog(@"add:%d",result);
    
    //减的测试(注意你每一次重新开始，都有一次tool的新建，所以值并不会传递下来)
    result = [NSObject makeCaculator:^(QCCalcuTool *make) {
        make.sub(3).sub(2);
    }];
    NSLog(@"sub:%d",result);
    
    //乘的测试，result应该先有值，所以先加再乘
    result = [NSObject makeCaculator:^(QCCalcuTool *make) {
       
        make.add(3).add(6).mul(3);
        
    }];
    NSLog(@"mul:%d",result);
    
    //除的测试，因为我打不出无穷值，所以我写的是➗0无效
    result = [NSObject makeCaculator:^(QCCalcuTool *make) {
       
        make.add(3).add(3).div(0);
    }];
    NSLog(@"div:%d",result);
    
    
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
