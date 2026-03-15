//
//  ViewController.h
//  MiniBrowser
//
//  Created by Seojihyeon on 3/12/26.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activitiyIndicatorView;
- (IBAction)bookmarkAction:(id)sender;



@end

