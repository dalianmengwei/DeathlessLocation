//
//  DeathlessLocation.h
//  DeathlessLocation
//
//  Created by mw on 17/8/18.
//  Copyright © 2017年 No One. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface DeathlessLocation : NSObject<CLLocationManagerDelegate>
+ (DeathlessLocation *) sharedInstance;
- (void)startLocation;
@end
