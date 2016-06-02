//
//  ViewController.m
//  RegExpDemo
//
//  Created by TobyoTenma on 16/6/2.
//  Copyright © 2016年 TobyoTenma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 准备对象
    NSString * searchStr = @"LOOK239832LOOK";
    NSString * regExpStr = @"[0-9A-Z].";
    NSString * replacement = @"ha";
    // 创建 NSRegularExpression 对象,匹配 正则表达式
    NSRegularExpression *regExp = [[NSRegularExpression alloc] initWithPattern:regExpStr
                                                                       options:NSRegularExpressionCaseInsensitive
                                                                         error:nil];
    // 当匹配出来有多个结果时,我们先得到所有符合条件的结果,并保存到数组中
    // 数组中元素类型为 NSTextCheckingResult 对象
//    NSArray *arr = [regExp matchesInString:searchStr
//                                   options:NSMatchingReportProgress
//                                     range:NSMakeRange(0, searchStr.length)];
    // 遍历 NSTextCheckingResult 对象数组
//    for (NSTextCheckingResult *result in arr) {
        // 从NSTextCheckingResult对象中取出 range 属性
//        NSRange range = result.range;
//        // 替换匹配的字符串为 filter.str
//        searchStr = [regExp stringByReplacingMatchesInString:searchStr
//                                                               options:NSMatchingReportProgress
//                                                                 range:NSMakeRange(0, searchStr.length)
//                                                          withTemplate:replacement];
//        NSLog(@"%@",searchStr);
//    }
    
    NSString *resultStr = searchStr;
    // 替换匹配的字符串为 searchStr
    resultStr = [regExp stringByReplacingMatchesInString:searchStr
                                                 options:NSMatchingReportProgress
                                                   range:NSMakeRange(0, searchStr.length)
                                            withTemplate:replacement];
    NSLog(@"\nsearchStr = %@\nresultStr = %@",searchStr,resultStr);
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
