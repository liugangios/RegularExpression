//
//  ViewController.m
//  RegularExpression
//
//  Created by Gavin on 16/6/28.
//  Copyright © 2016年 Gavin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Regex.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"1242772576@qq.com";
    NSLog(@"%i",str.isEmailAddress);
}


@end
