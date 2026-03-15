//
//  ViewController.m
//  MiniBrowser
//
//  Created by Seojihyeon on 3/12/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bookmarkSegmentedControl,mainWebView,urlTextField,activitiyIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"https://www.facebook.com";
    urlTextField.text =urlString;
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSString *urlString = urlTextField.text;
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)bookmarkAction:(id)sender {
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex:bookmarkSegmentedControl.selectedSegmentIndex];
    NSString *urlString = [[NSString alloc]initWithFormat:@"https://www.%@.com",bookmarkURL];
    urlTextField.text =urlString;
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [activitiyIndicatorView startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activitiyIndicatorView stopAnimating];
}
@end
