//
//  ViewController.m
//  xcconfigTest
//
//  Created by Mac on 2017/3/22.
//  Copyright © 2017年 fxh. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",APP_DISPLAY_NAME);
    
    NSObject *object = [[NSObject alloc] init];
    
    NSLog(@">>>>%lu",(unsigned long)[object retainCount]);

    [object release];
    
   // NSLog(@">>>>%@",object);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //申明返回的结果是json类型
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //申明请求的数据是json类型
    manager.requestSerializer=[AFJSONRequestSerializer serializer];
    // 如果报接受类型不一致请替换一致text/html或别的
    //manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [manager POST:@"jcccvj" parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
        
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
