//
//  ViewController.m
//  VisualAddressBook
//
//  Created by Seojihyeon on 3/8/26.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView;
@synthesize nameTextField,genreTextField,authorTextField;
@synthesize countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
    //[book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"헤밍웨이";
    //[book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    //[book3 bookPrint];
    
    myBook  = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    NSLog(@"%li",[myBook countBook]);
    
}

-(IBAction)showAllBookAction:(id)sender{
    NSLog(@"%@", [myBook showAllBook]);
    resultTextView.text = [myBook showAllBook];
}

-(IBAction)addBookAction:(id)sender;{
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    resultTextView.text = @"책이 추가되었습니다";
    
    countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}
-(IBAction)findBookAction:(id)sender{
    NSString *strTemp = [myBook findBook:nameTextField.text];
    if (strTemp != nil){
        resultTextView.text = strTemp;
    }
    else{
        resultTextView.text = @"찾으시는 책이 없네요";
    }
}

-(IBAction)removeBookAction:(id)sender{
    NSString *strTemp = [myBook removeBook:nameTextField.text];
    NSMutableString *str = [[NSMutableString alloc]init];
    [str appendString:strTemp];
    [str appendString:@" 책이 지워졌습니다"];
    if (strTemp != nil){
        resultTextView.text = str;
    }
    else{
        resultTextView.text = @"삭제하고자 하는 책이 없네요";
    }
    
    countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}
@end
