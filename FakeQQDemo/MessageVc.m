//
//  MessageVc.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "MessageVc.h"

@interface MessageVc ()
@property(nonatomic,strong)NSArray *nameDataArray;
@property(nonatomic,strong)NSArray *iconDataArray;

@end

@implementation MessageVc
-(instancetype)init{
    if (self=[super init]) {
        _nameDataArray=@[@"Tom",@"Jack",@"Lily",@"Amy",@"Eric",@"Apple"];
        _iconDataArray=@[@"img1.png",@"img2.png",@"img3.png",@"img4.png",@"img5.png",@"img6.png"];
        //
        //
        _msgTableView=[[UITableView alloc]init];
        _msgTableView.delegate=self;
        _msgTableView.dataSource=self;
        //
        //
         UIColor *navicolor=[UIColor colorWithRed:38/255.0 green:197/255.0 blue:254/255.0 alpha:1.0];
        UINavigationBar *upNavigationBar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 45)];
        
        //UIColor *testcolor=[UIColor yellowColor];
        upNavigationBar.barTintColor=navicolor;
        self.upnav=upNavigationBar;
        _msgVcNavigationBar=[[UINavigationBar alloc]init];
        _msgVcNavigationBar.barTintColor=navicolor;
        _msgVcNavigationBar.frame=CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, 45);
        //这里如果将这个uinavigationbar的origin设置为(0,45)那么会在上下两个uinavigationbar之间留下一条细线，实际上应该设置为（0，44），因为范围的设置是个开区间
        UIButton *leftImageButton=[[UIButton alloc]init];
        self.theimageBtn=leftImageButton;
        UIImage *leftnavigationImage=[UIImage imageNamed:@"kid.jpeg"];
        [leftImageButton setImage:leftnavigationImage forState:UIControlStateNormal];
        
        leftImageButton.frame=CGRectMake(10, 0, 40, 40 );
        leftImageButton.layer.cornerRadius=20;
        //cornerRadius只影响背景颜色而不影响背景图片或子图层
        leftImageButton.layer.masksToBounds=YES;
        [_msgVcNavigationBar addSubview:leftImageButton];
        UIButton *centerBtn=[[UIButton alloc]init];
        self.centerbtn=centerBtn;
       
        centerBtn.frame=CGRectMake(UIScreen.mainScreen.bounds.size.width/2-0.5*100, 0, 100, 45);
        [_msgVcNavigationBar addSubview:centerBtn];
        UIViewController *theRootVc=[UIApplication sharedApplication].keyWindow.rootViewController;
        [leftImageButton addTarget:theRootVc action:@selector(pushOutTheLeftVc) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
//下面这句话是默认的
//@synthesize label=xlabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //NSLog(@"upnavi'sheight:%lf",self.msgVcNavigationBar.frame.size.height);
    self.view.backgroundColor=[UIColor colorWithRed:38/255.0 green:197/255.0 blue:254/255.0 alpha:1.0];
    //self.view.backgroundColor=[UIColor redColor];
    _msgTableView.frame=CGRectMake(0, 87, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height-88);
    [self.view addSubview:_msgTableView];
    //
    //
    //
    //[self.view addSubview:self.upnav];
    //[self.view addSubview:_msgVcNavigationBar];
     NSLog(@"message func:%s\t loaded",__func__);
    //UIColor *navicolor=[UIColor colorWithRed:91.0/255.0 green:208.0/255.0 blue:217.0/255.0 alpha:1.0];
   // UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(0, 250, 450, 345)];
   // UIColor *testcolor=[UIColor yellowColor];
    
   // NSLog(@"%@",navicolor);
   // btn.backgroundColor=navicolor;
   // [self.view addSubview:btn];
  /*  CALayer *l=[self.view layer];
    if (!(l==nil)) {
        NSLog(@"self.view's layer is not nil");
    }
    //创建圆形路径
    UIBezierPath *path=[[UIBezierPath alloc]init];
    //起点要在圆心水平右侧
    [path moveToPoint:CGPointMake(200, 100)];
    //添加圆形弧路径
    [path addArcWithCenter:CGPointMake(150, 100) radius:50 startAngle:0 endAngle:3.1415926*3/2 clockwise:YES];
    //创建图形层
    CAShapeLayer *layer=[CAShapeLayer layer];
    //路径线的颜色
    layer.fillColor=[UIColor clearColor].CGColor;
    //闭合图形填充色
    layer.strokeColor=[UIColor greenColor].CGColor;
    //线宽
    layer.lineWidth=10;
    //线的样式：端点和交点
    layer.lineCap=kCALineCapRound;
    layer.lineJoin=kCALineJoinRound;
    //设置图形路径
    layer.path=path.CGPath;
    [self.view.layer addSublayer:layer];
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
  [_centerbtn setTitle:@"消息" forState:UIControlStateNormal];
    if ([self.view.subviews containsObject:_upnav]&&[self.view.subviews containsObject:_msgVcNavigationBar]) {
    }
    else{
       
        [self.view addSubview:_upnav];
         [self.view addSubview:_msgVcNavigationBar];
    }
}
-(void)viewDidAppear:(BOOL)animated{
    
}
-(void)viewWillDisappear:(BOOL)animated{
    
}
-(void)viewDidDisappear:(BOOL)animated{
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier=@"identifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
        cell.textLabel.text=[_nameDataArray objectAtIndex:[indexPath row]];
        cell.imageView.contentMode=UIViewContentModeScaleToFill;
        [cell.imageView setImage:[UIImage imageNamed:[_iconDataArray objectAtIndex:[indexPath row]]]];
        cell.imageView.backgroundColor=[UIColor orangeColor];
        
    }
    if (indexPath.row==3) {
        CGFloat width=cell.imageView.image.size.height;
        CGSize therightrec=cell.imageView.image.size;
        therightrec.width=width;
       
    } /*cell.imageView.contentMode=UIViewContentModeScaleToFill;
    if (indexPath.row==3) {
        NSLog(@"width:%lf;height:%lf",cell.imageView.layer.frame.size.width,cell.imageView.layer.frame.size.height);
        CGRect therightrec=cell.imageView.layer.frame;
        CGFloat thewidth=therightrec.size.height;
        therightrec.size.width=thewidth;
        cell.imageView.layer.frame=therightrec;
    } //第三个cell的imgview的宽度要大于其他的，是因为所有的cell的高度都是一样的，在所有的高度一致的情况下，第三个cell的宽本来就比其他的大，故其imgview的宽度要突出。可以看出，cell的imgview的大小时随着图片的改变而改变的*/
    return cell;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _iconDataArray.count;
}

@end
