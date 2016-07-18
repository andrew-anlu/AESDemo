//
//  ViewController.m
//  AesTest
//
//  Created by NNIT on 7/1/16.
//  Copyright © 2016 NNIT. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AESCrypt.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self test1];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)testServer{
    NSURL *url = [NSURL URLWithString:@"http://221.238.232.136/guanhuai/index.php?c=Ctest&m=test"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    [request setHTTPMethod:@"GET"];
    NSHTTPURLResponse* urlResponse = nil;
    NSError *error = [[NSError alloc] init];
    NSData *received = [NSURLConnection sendSynchronousRequest:request returningResponse:&urlResponse error:&error];
    NSString *str1 = [[NSString alloc]initWithData:received encoding:NSUTF8StringEncoding];
    NSString *destr = [str1 AES256DecryptWithKey:@"28c8edde3d61a04160d299c40c988883"];
    NSLog(@"%@",destr);
    //========================now encode ==============================
    NSString *encode = [destr AES256EncryptWithKey:@"28c8edde3d61a04160d299c40c988883"];
    
    NSString *decode = [encode AES256DecryptWithKey:@"28c8edde3d61a04160d299c40c988883"];
    
    NSLog(@"%@",decode);
}

-(void)test1{
    NSString *hello = @"hello";
    hello = [hello AES256EncryptWithKey:@"28c8edde3d61a04160d299c40c988883"];
    NSLog(@"加密后的字符串:%@",hello);
    
    NSString *jieMiStr = [hello AES256DecryptWithKey:@"28c8edde3d61a04160d299c40c988883"];
    NSLog(@"解密后的字符串:%@",jieMiStr);
    
    
    
    
}


@end
















