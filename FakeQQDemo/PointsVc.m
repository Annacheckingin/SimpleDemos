//
//  PointsVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//
#import "MainRootVc.h"
#import "PathView.h"
#import "PointsVc.h"
#import "UIImage+RUIimage.h"
@interface PointsVc ()

@end

@implementation PointsVc


- (void)viewDidLoad {
    [super viewDidLoad];

    PathView *v1=[[PathView alloc]init];
    v1.backgroundColor=[UIColor whiteColor];
    
    v1.frame=CGRectMake(0, 90, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:v1];
    
   /* UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageview.image=[UIImage imageNamed:@"kid.jpeg"];
    UIGraphicsBeginImageContextWithOptions(imageview.bounds.size, NO, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:imageview.bounds cornerRadius:imageview.frame.size.width*0.1] addClip];
    [imageview drawRect:imageview.bounds];
    imageview.image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.view addSubview:imageview];
    UIImageView *img2=[[UIImageView alloc]initWithFrame:CGRectMake(300, 100, 100, 100)];
    img2.image=[UIImage imageNamed:@"kid.jpeg"];
    [self.view addSubview:img2];
    */
 /* NSLog(@"points func:%s\t loaded",__func__);
    self.imgview=[[UIImageView alloc]initWithFrame:CGRectMake(150, 150, 200, 200)];
    NSString *pathofimg=[[NSBundle mainBundle]pathForResource:@"kid" ofType:@"jpeg"];
    UIImage *img=[UIImage imageWithContentsOfFile:pathofimg];
    [self.imgview setImage:img];
    [self.view addSubview:self.imgview];
    UIImageView *i2=[[UIImageView alloc]initWithFrame:CGRectMake(150, 360, 200, 200)];
    UIImage *img2=[UIImage imageWithContentsOfFile:pathofimg];
    img2=[img2 imageWithCornerRadius:50 ofSize:i2.frame.size];
    [i2 setImage:img2];
    [self.view addSubview:i2];
   */
    // Do any additional setup after loading the view.
 
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
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
@end
