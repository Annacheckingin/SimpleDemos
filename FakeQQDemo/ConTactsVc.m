//
//  ConTactsVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "ConTactsVc.h"
#import "MainRootVc.h"
#import "MessageVc.h"
@interface ConTactsVc ()
@property(nonatomic,strong)UINavigationBar *downnavibar;
@property(nonatomic,strong)UINavigationBar *upnavibar;

@end

@implementation ConTactsVc
-(instancetype)init{
    if (self=[super init]) {
  /*  _upnavibar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 45)];
        UIColor *navicolor=[UIColor colorWithRed:38/255.0 green:197/255.0 blue:254/255.0 alpha:1.0];
        _upnavibar.barTintColor=navicolor;
      _downnavibar=[[UINavigationBar alloc]init];
        _downnavibar.barTintColor=navicolor;
        _downnavibar.frame=CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, 45);
        */
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self.view addSubview:_upnavibar];
    ////[self.view addSubview:_downnavibar];
    //UIButton *centerButtonOfCT=[[UIButton alloc]init];
    //[centerButtonOfCT setTitle:@"联系人" forState:UIControlStateNormal];
//centerButtonOfCT.frame=CGRectMake(UIScreen.mainScreen.bounds.size.width/2-0.5*100, 0, 100, 45);
  //  [_downnavibar addSubview:centerButtonOfCT];
    
    
  /* NSLog(@"contacts func:%s\t loaded",__func__);
    UIView *containerview=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 150, 150)];
    CAGradientLayer *layer=[CAGradientLayer layer];
    layer.frame=containerview.bounds;
    //渐变色的种类设置
    layer.colors=@[(__bridge id)[UIColor greenColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor orangeColor].CGColor];
    //颜色的起点到终点按比例分段位置,即绿色从最上方开始，到比例为0.3处结束，从0.3开始到0.5为黄色的存在位置，0.5以后为橘色的存在位置
    layer.locations=@[@0.0,@0.3,@0.5];
    //颜色渐变的起点和终点，0.0代表左上角，1.1代表右下角
    layer.startPoint=CGPointMake(0.5, 0);
    layer.endPoint=CGPointMake(0.5, 1);
    [containerview.layer addSublayer:layer];
    [self.view addSubview:containerview];
    */
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    MainRootVc *rootVc=(MainRootVc *)[UIApplication sharedApplication].keyWindow.rootViewController;
    MessageVc *themsgVc=[rootVc.theBarVc.viewControllers objectAtIndex:0];
    [themsgVc.centerbtn setTitle:@"联系人" forState:UIControlStateNormal];
    if ([self.view.subviews containsObject:themsgVc.upnav]&&[self.view.subviews containsObject:themsgVc.msgVcNavigationBar]) {
    }
    else{
        [self.view addSubview:themsgVc.upnav];
        [self.view addSubview:themsgVc.msgVcNavigationBar];
    }
    /*UIButton *theimgbtnfrommsgVc=themsgVc.theimageBtn;
    self.theCommonleftbtn=theimgbtnfrommsgVc;
    [self.downnavibar addSubview:theimgbtnfrommsgVc];
    if ([self.downnavibar.subviews containsObject:theimgbtnfrommsgVc]) {}
    else{
        [self.downnavibar addSubview:_theCommonleftbtn];
    }
*/
}
-(void)viewDidAppear:(BOOL)animated{}
-(void)viewWillDisappear:(BOOL)animated{}
-(void)viewDidDisappear:(BOOL)animated{}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
