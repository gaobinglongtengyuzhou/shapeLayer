//
//  ViewController.h
//  SuperDemoThree
//
//  Created by dongqiangfei on 16/3/11.
//  Copyright © 2016年 dongqiangfei. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecretGardenPicPopViewDelegate <NSObject>

@optional

- (void)timeTickOut:(BOOL)backToSecret;

@end
@interface ViewController : UIViewController
{
    id<SecretGardenPicPopViewDelegate> _delegate;
}

@property (nonatomic, copy) id<SecretGardenPicPopViewDelegate> delegate;

@end

