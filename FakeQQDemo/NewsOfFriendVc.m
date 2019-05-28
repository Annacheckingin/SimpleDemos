//
//  NewsOfFriendVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "NewsOfFriendVc.h"
#import "MainRootVc.h"
@interface NewsOfFriendVc ()
@property(nonatomic,strong)UINavigationBar *up;
@property(nonatomic,strong)UINavigationBar *down;
@property(nonatomic,strong)UIButton *theimgbtn;
@end

@implementation NewsOfFriendVc

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"news func:%s\t loaded",__func__);
    
    
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    MainRootVc *theapplicationRtVc=(MainRootVc *)[UIApplication sharedApplication].keyWindow.rootViewController;
    MessageVc *themsgVc=[theapplicationRtVc.theBarVc.viewControllers objectAtIndex:0];
    [themsgVc.centerbtn setTitle:@"动态" forState:UIControlStateNormal];
    if ([self.view.subviews containsObject:themsgVc.upnav]&&[self.view.subviews containsObject:themsgVc.msgVcNavigationBar]) {
    }
    else{
        [self.view addSubview:themsgVc.upnav];
        [self.view addSubview:themsgVc.msgVcNavigationBar];
    }
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
