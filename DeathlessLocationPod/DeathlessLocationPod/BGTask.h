//
//  BGTask.h
//  DeathlessLocation
//
//  Created by mw on 17/8/18.
//  Copyright © 2017年 No One. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BGTask : NSObject
+(instancetype)shareBGTask;
-(UIBackgroundTaskIdentifier)beginNewBackgroundTask; //开启后台任务
@end
