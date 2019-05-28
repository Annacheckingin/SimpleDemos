//
//  BarVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "BarVc.h"
#define  LZG_ENM(_type1,_name1) _type1 _name1; enum

@interface BarVc ()
@property(nonatomic,strong)NSMutableArray *arrayofvc;
@end

@implementation BarVc
-(MessageVc *)messageVc{
    if (_messageVc==nil) {
        _messageVc=[[MessageVc alloc]init];
        NSLog(@"message alloced");
    }
    
    return _messageVc;
}
-(ConTactsVc *)contactsVc{
    if (_contactsVc==nil) {
        _contactsVc=[[ConTactsVc alloc]init];
         NSLog(@"contacts alloced");
    }
   
    return _contactsVc;
    
}
-(PointsVc *)pointsVC{
    if (_pointsVC==nil) {
        _pointsVC=[[PointsVc alloc]init];
         NSLog(@"points alloced");
    }
   
    return _pointsVC;
    
}
-(NewsOfFriendVc *)newsVC{
    if (_newsVC==nil) {
        _newsVC=[[NewsOfFriendVc alloc]init];
        NSLog(@"news alloced");
    }
    
    return _newsVC;
   
}
-(instancetype)init{
    if (self=[super init]) {
         NSLog(@"barvc stared load");
        
        NSLog(@"The barvc loaded");
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
     //NSLog(@"barview stared load");
    _arrayofvc=[[NSMutableArray alloc]init];

   //NSLog(@"array loaded");
   
    [_arrayofvc addObject:self.messageVc];
    [_arrayofvc addObject:self.contactsVc];
    [_arrayofvc addObject:self.pointsVC];
    
    [_arrayofvc addObject:self.newsVC];
    
  
    self.viewControllers=self.arrayofvc;
    //NSLog(@"viewcontrollers seted!");
   self.messageVc.tabBarItem.title=@"消息";
    //self.messageVc.view.backgroundColor=[UIColor redColor];
    self.pointsVC.tabBarItem.title=@"看点";
    //self.pointsVC.view.backgroundColor=[UIColor yellowColor];
    self.contactsVc.tabBarItem.title=@"联系人";
    //self.contactsVc.view.backgroundColor=[UIColor blueColor];
    
    self.newsVC.tabBarItem.title=@"动态";
    //self.newsVC.view.backgroundColor=[UIColor orangeColor];
    
   // NSLog(@"bars view loaded");
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

@end
