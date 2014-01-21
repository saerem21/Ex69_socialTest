//
//  ViewController.m
//  Ex69_socialTest
//
//  Created by SDT-1 on 2014. 1. 21..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)showActivityVC:(id)sender{
    NSString *service = SLServiceTypeFacebook;
    if([SLComposeViewController isAvailableForServiceType:service]){
        SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:service];
        UIImage *image = [UIImage imageNamed:@"ball1.png"];
        [composer addImage:image];
        [composer setInitialText:@"소셜 테스트"];
        
        composer.completionHandler = ^(SLComposeViewControllerResult result){
            if(SLComposeViewControllerResultDone == result){
                NSLog(@"complete");
            }
            else{
                NSLog(@"exit");
            }
        };
        [self presentViewController:composer animated:YES completion:nil];

    }
//    
//    UIImage *image = [UIImage imageNamed:@"ball1.png"];
//    NSArray *items = @[@"activity view test",image];
//    UIActivityViewController *vc = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
//    vc.completionHandler = ^(NSString *activityType,BOOL completed){
//        NSLog(@"%@ 의 동작을 마쳤습니다.",activityType);
//    };
    
    //[self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
