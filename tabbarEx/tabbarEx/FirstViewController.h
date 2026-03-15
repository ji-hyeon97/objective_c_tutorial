//
//  FirstViewController.h
//  tabbarEx
//
//  Created by Seojihyeon on 3/15/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : UIViewController
- (IBAction)FirstAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

NS_ASSUME_NONNULL_END
