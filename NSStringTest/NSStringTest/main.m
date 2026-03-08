//
//  main.m
//  NSStringTest
//
//  Created by Seojihyeon on 3/7/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [[NSString alloc]init];
        str = @"This is NSString";
        NSLog(@"str : %@",str);
        
        //convenience method
        NSString *str2 = [[NSString alloc]initWithString:@"This is NSString"];
        NSLog(@"str2 : %@",str2);
        
        //immutabe class
        NSString *result;
        result = [str substringFromIndex:6];
        NSLog(@"result : %@",result);
        result = [str substringToIndex:3];
        NSLog(@"result : %@",result);
        
        //mutabe class
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        NSLog(@"mstr : %@",mstr);
        [mstr appendString:@" and NSMutableString"];
        NSLog(@"mstr : %@", mstr);
    }
    return 0;
}
