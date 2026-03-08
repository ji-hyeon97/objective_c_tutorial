//
//  Vehicle.m
//  First
//
//  Created by Seojihyeon on 3/7/26.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

//-(void) setWheels:(int)w{
//    wheels = w;
//}
//-(void) setSeats:(int)s{
//    seats = s;
//}
//-(int) wheels{
//    return wheels;
//}
//-(int) seats{
//    return seats;
//}

-(void) setWheels:(int)w Seats:(int)s{
    wheels = w;
    seats = s;
}


-(void) print{
    NSLog(@"wheels : %i, seats : %i",wheels, seats);
}
@end
