//
//  ViewController.h
//  signUpScreen
//
//  Created by Seojihyeon on 3/9/26.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *idTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *telTextField;
@property (strong, nonatomic) IBOutlet UITextField *blogTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)signUpAction:(id)sender;

@end

