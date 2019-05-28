//
//  MessageVc.h
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MessageVc : UIViewController<UITableViewDelegate,UITableViewDataSource>
//@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UITableView *msgTableView;
@property(nonatomic,strong)UINavigationBar *upnav;
@property(nonatomic,strong)UIButton *theimageBtn;
@property(nonatomic,strong)UINavigationBar *msgVcNavigationBar;
@property(nonatomic,strong)UIButton *centerbtn;
@property(nonatomic,strong)UINavigationItem *leftItem;
@property(nonatomic,strong)UINavigationItem *righItem;
@end

NS_ASSUME_NONNULL_END
