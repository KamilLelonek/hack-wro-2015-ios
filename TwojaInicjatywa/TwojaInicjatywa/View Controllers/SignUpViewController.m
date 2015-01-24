//
//  SignUpViewController.m
//  TwojaInicjatywa
//
//  Created by afilipowicz on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.loginButton.delegate = self;
    self.loginButton.readPermissions = @[@"public_profile", @"email"];
}
- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    
}
- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
  
}
- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
 
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
