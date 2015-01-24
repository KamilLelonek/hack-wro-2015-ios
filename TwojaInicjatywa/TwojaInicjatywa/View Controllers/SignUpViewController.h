//
//  SignUpViewController.h
//  TwojaInicjatywa
//
//  Created by afilipowicz on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface SignUpViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;

@end
