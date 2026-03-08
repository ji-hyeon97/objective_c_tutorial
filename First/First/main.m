//
//  main.m
//  First
//
//  Created by Seojihyeon on 3/7/26.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool { //메모리 자동 할당 해제
        
        Vehicle *hello = [[Vehicle alloc]init]; //create instance object -> method chain
        
        // [Receiver Message]
//        hello.wheels = 4;
//        hello.seats = 2;
        [hello setWheels:4 Seats:2];
        //        [hello setWheels:4];
        //        [hello setSeats:2];
        
        //        [hello print];
        
        if (hello.wheels==4){
            NSLog(@"wheels : 4");
        }else{
            NSLog(@"no");
        }
        
        switch (hello.seats) {
            case 2:
                NSLog(@"seats : 2");
                break;
            default:
                NSLog(@"NO");
                break;
        }
        
        NSLog(@"wheels : %i, seats : %i",hello.wheels, hello.seats);
    }
    return 0;
}
