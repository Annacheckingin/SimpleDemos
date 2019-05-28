//
//  BarVc.h
//  FakeQQDemo
//
//  Created by 李正国 on 2019/3/31.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageVc.h"
#import "ConTactsVc.h"
#import "PointsVc.h"
#import "NewsOfFriendVc.h"
NS_ASSUME_NONNULL_BEGIN

@interface BarVc : UITabBarController
@property(nonatomic,strong)MessageVc *messageVc;
@property(nonatomic,strong)ConTactsVc *contactsVc;
@property(nonatomic,strong)PointsVc *pointsVC;
@property(nonatomic,strong)NewsOfFriendVc *newsVC;
@end

NS_ASSUME_NONNULL_END
