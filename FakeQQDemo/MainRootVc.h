//
//  MainRootVc.h
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LeftVc.h"
#import "BarVc.h"
NS_ASSUME_NONNULL_BEGIN

@interface MainRootVc : UIViewController
@property(nonatomic,strong)LeftVc *Leftvc;
@property(nonatomic,strong)BarVc *theBarVc;
@end

NS_ASSUME_NONNULL_END
