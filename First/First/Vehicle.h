//
//  Vehicle.h
//  First
//
//  Created by Seojihyeon on 3/7/26.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject{
//member variable
//    int wheels;
//    int seats;
}

@property int wheels;
@property int seats;

//member method
-(void) setWheels:(int)w Seats:(int)s;
//-(void) drawCircleX:(int)x Y:(int)y Z:(int)z;
//-(void) drawCircleXYZ:(int)x :(int)y : (int)z;
//-(void) setWheels:(int)w;
//-(void) setSeats:(int)s;
//-(int) wheels;
//-(int) seats;
-(void) print;
@end

