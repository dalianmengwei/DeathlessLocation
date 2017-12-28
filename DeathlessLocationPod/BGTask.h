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

/**
 *
 @param all : yes 关闭所有 ,no 只留下主后台任务
 all:yes 为了去处多余残留的后台任务，只保留最新的创建的
 *
 **/
-(void)endBackGroundTask:(BOOL)all;
@end

