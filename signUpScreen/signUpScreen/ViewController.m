//
//  ViewController.m
//  signUpScreen
//
//  Created by Seojihyeon on 3/9/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    nameTextField.delegate = self;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:(YES)];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)signUpAction:(id)sender {
    resultTextView.text = [NSString stringWithFormat:@"%@ 님의 가입을 축하드립니다.", nameTextField.text];
}
@end
