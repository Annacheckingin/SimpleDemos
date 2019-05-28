//
//  MainRootVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "MainRootVc.h"

@interface MainRootVc ()
{
    BOOL islefted;
    UIView *_coveredview;
}
@end

@implementation MainRootVc
-(instancetype)init{
    if (self=[super init]) {
        NSLog(@"mainvc started load");
         _Leftvc=[[LeftVc alloc]init];
        _theBarVc=[[BarVc alloc]init];
        NSLog(@"mainvc loaded");
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewController:_Leftvc];
    [self addChildViewController:_Leftvc];
    [self.view addSubview:_Leftvc.view];
    [self.view addSubview:_theBarVc.view];
    islefted=NO;
    
    
   // [self addChildViewController:_Leftvc];
    //[self addChildViewController:_theBarVc];
    
    
    NSLog(@"mainrootvc,sfunc: %s has loaded",__func__);
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
-(void)pushOutTheLeftVc{
    if (islefted==NO) {
        UIView *coverdview=[[UIView alloc]initWithFrame:CGRectMake(0, 87, LeftWidth+LeftX, LeftHeight)];
        
        _coveredview=coverdview;
        coverdview.backgroundColor=[UIColor clearColor];
   
        [self.theBarVc.view addSubview:coverdview];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        CGRect theMovedRec=self.Leftvc.view.frame;
        theMovedRec.origin.x=0;
        self.Leftvc.view.frame=theMovedRec;
        CGRect theMovedRecOfBvc=self.theBarVc.view.frame;
        theMovedRecOfBvc.origin.x+=300;
        self.theBarVc.view.frame=theMovedRecOfBvc;
        [UIView commitAnimations];
        islefted=YES;
        
    }
    else{
        [_coveredview removeFromSuperview];
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        CGRect originrec=CGRectMake(LeftX, 0,-LeftX , LeftHeight);
        self.Leftvc.view.frame=originrec;
        CGRect orec=CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height);
        self.theBarVc.view.frame=orec;
        [UIView commitAnimations];
        islefted=NO;
    }
    
}
@end
