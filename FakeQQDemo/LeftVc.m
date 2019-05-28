//
//  LeftVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "LeftVc.h"

@interface LeftVc ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *leftTableView;
@property(nonatomic,strong)NSArray *dataSourceOfTableView;
@property(nonatomic,strong)UIImageView *imgView;
@end

@implementation LeftVc
-(instancetype)init{
    if (self=[super init]) {
        
        _leftTableView=[[UITableView alloc]init];
        _leftTableView.separatorColor=[UIColor clearColor];
        _leftTableView.delegate=self;
        _leftTableView.dataSource=self;
        _imgView=[[UIImageView alloc]init];
       self.dataSourceOfTableView=[[NSArray alloc]initWithObjects:@"了解会员特权",@"qq钱包",@"个性装扮",@"我的收藏",@"我的相册",@"我的文件",@"免流量特权", nil];
        NSLog(@"datasource down");
        NSLog(@"leftvc loaded");
       
    }
    return self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSourceOfTableView.count;
}

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.frame=CGRectMake(LeftX, 0, -LeftX ,LeftHeight);
   _imgView.frame=CGRectMake(0, 0,300, 301);
    NSLog(@"imgView.bounds:%@",NSStringFromCGRect(_imgView.bounds));
    NSLog(@"self.view.bounds%@:",NSStringFromCGRect(self.view.bounds));
    
    ;
 NSLog(@"View.frame:%@",NSStringFromCGRect(self.view.frame));
NSLog(@"imgView:%@",NSStringFromCGRect(_imgView.frame));
    //_imgView.frame=_imgView.bounds;
    _imgView.contentMode=UIViewContentModeScaleToFill
    ;
    //UIViewContentModeScaleAspectFit 原比例填充，不变形
    //UIViewContentModeScaleAspectFill 等比例填充
    //UIViewContentModeRedraw
    if (_imgView!=nil) {
        NSLog(@"imgview was not empty");
    }
    UIImage *imgOfImgV=[UIImage imageNamed:@"kid.jpeg"];
    [_imgView setImage:imgOfImgV];
    [self.view addSubview:_imgView];
    
   
    [self.view addSubview:_leftTableView];
    
    
    NSLog(@"leftview loaded");
    
    
    self.leftTableView.frame=CGRectMake(0, 300, self.view.bounds.size.width, 300);
    UIButton *btn1=[[UIButton alloc]init];
   // CGRect theorigin=btn1.bounds;
    //theorigin.origin.y-=150;
   // btn1.bounds=theorigin;
btn1.frame=CGRectMake(0,self.view.bounds.size.height-100, 100, 50);
 [btn1 setTitle:@"设置" forState:UIControlStateNormal];
// printf("!-------------!\n");
   /* for (UIView *obj in btn1.subviews) {
        NSLog(@"btn1.subview:%@",obj);
       // if ([obj isKindOfClass:[UILabel class]]) {
         //   CGRect theorigin=obj.bounds;
       //     theorigin.origin.y-=50;
        //   obj.bounds=theorigin;
       // }
    }*/
   
    /*NSLog(@"titlelabel.frame%@,andOrigin.x:%f,andy:%f",NSStringFromCGRect(btn1.titleLabel.frame),btn1.titleLabel.frame.origin.x,btn1.titleLabel.frame.origin.y);
    NSLog(@"btn1.titlelabel.layer%@,andx:%f and y:%F",NSStringFromCGRect(btn1.titleLabel.layer.frame),btn1.titleLabel.layer.frame.origin.x,btn1.titleLabel.frame.origin.y);
    NSLog(@"title.abel.text:%@",btn1.titleLabel.text);
    NSArray *temparray;
    temparray=btn1.subviews;
    if (temparray!=nil) {
        printf("array was  not nil\n");
        NSLog(@"array was:%@",temparray);
      UIView *obj;
        for (int i=0; i++;obj!=nil) {
            obj=[temparray objectAtIndex:i];
            NSLog(@"tempitem:%@",obj);
        }*/
    
  /*  for (UIView *ob in btn1.subviews) {
        if ([ob isKindOfClass:[UILabel class]]) {
            NSLog(@"its:%@",ob);
            CGRect rec=ob.frame;
            printf("the origin frame :%s\n",NSStringFromCGRect(rec).UTF8String);
            rec.origin.y+=50;
            [ob setFrame:rec];
            printf("has set frame\n");
        }
    
    }
    printf("!-------------!\n");
*/
    [self.view addSubview:btn1];
    [btn1 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    //btn1.backgroundColor=[UIColor greenColor];
    
   // btn1.backgroundColor=[UIColor blueColor];
    UIButton *btn2=[[UIButton alloc]initWithFrame:CGRectMake(120, self.view.bounds.size.height-100, 100, 50)];
    [btn2 setTitle:@"夜间" forState:UIControlStateNormal];
  
    //btn2.backgroundColor=[UIColor greenColor];
    [btn2 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    //btn2.backgroundColor=[UIColor orangeColor];
    [self.view  addSubview:btn2];
    self.view.backgroundColor=[UIColor whiteColor];
    //
    //_leftTableView.backgroundColor=[UIColor greenColor];
    
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier=@"identifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.textLabel.text=[self.dataSourceOfTableView objectAtIndex:[indexPath row]];
        cell.textLabel.textAlignment=NSTextAlignmentCenter;
        //cell.backgroundColor=[UIColor blueColor];
        //cell.backgroundColor=[UIColor purpleColor];
        
    }
   // for (UIView *obj in cell.subviews) {
    //    NSLog(@"%@",obj);
   // }

    return cell;
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
