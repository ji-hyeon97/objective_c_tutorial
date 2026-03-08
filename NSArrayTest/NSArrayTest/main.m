//
//  main.m
//  NSArrayTest
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"January",@"Febrauary",@"March",@"April",@"June",@"July",@"August",@"September", nil];
        
//        for (int i=0; i<month.count; i++) {
//            NSLog(@"month : %@",[month objectAtIndex:i]);
//        }
        
        for (NSString *strTemp in month) {
            NSLog(@"month : %@",strTemp);
        }
        
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        
        [mmonth addObject:@"October"];
        [mmonth addObject:@"November"];
        [mmonth addObject:@"December"];
        
        for (NSString *strTemp in mmonth) {
            NSLog(@"mmonth : %@",strTemp);
        }
        
        
    }
    return 0;
}
