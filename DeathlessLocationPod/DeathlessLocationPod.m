//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  DeathlessLocationPod.m
//  DeathlessLocationPod
//
//  Created by mw on 2017/8/18.
//  Copyright (c) 2017年 Tiger8. All rights reserved.
//

#import "DeathlessLocationPod.h"
#import "CaptainHook.h"
#import <UIKit/UIKit.h>

#import "DeathlessLocation.h"

CHDeclareClass(MicroMessengerAppDelegate)

CHOptimizedMethod2(self, void, MicroMessengerAppDelegate, application, UIApplication *, application, didFinishLaunchingWithOptions, NSDictionary *, options)
{
    CHSuper2(MicroMessengerAppDelegate, application, application, didFinishLaunchingWithOptions, options);
    
    
    UIAlertView *alert;
    //判断定位权限
    if([UIApplication sharedApplication].backgroundRefreshStatus == UIBackgroundRefreshStatusDenied)
    {
        alert = [[UIAlertView alloc]initWithTitle:@"提示"
                                          message:@"应用没有开启定位，便不能保持后台运行,需要在在设置/通用/后台应用刷新开启"
                                         delegate:nil
                                cancelButtonTitle:@"确定"
                                otherButtonTitles:nil, nil];
        [alert show];
    }
    else if ([UIApplication sharedApplication].backgroundRefreshStatus == UIBackgroundRefreshStatusRestricted)
    {
        alert = [[UIAlertView alloc]initWithTitle:@"提示"
                                          message:@"设备不支持定位"
                                         delegate:nil
                                cancelButtonTitle:@"确定"
                                otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    {
        [[DeathlessLocation sharedInstance] startLocation];
    }
}
CHConstructor{
    CHLoadLateClass(MicroMessengerAppDelegate);
    CHHook2(MicroMessengerAppDelegate, application, didFinishLaunchingWithOptions);
}
