//
//  PULoginViewController.m
//  Pool
//
//  Created by Dylan Humphrey on 3/17/15.
//  Copyright (c) 2015 Dylan Humphrey. All rights reserved.
//

#import <Parse/Parse.h>
#import "PULoginViewController.h"

@interface PULoginViewController (){
    UITextField *usernameField;
    UITextField *passwordField;
}

@end

@implementation PULoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Button Methods

- (void)login{
    [PFUser logInWithUsernameInBackground:usernameField.text password:passwordField.text block:^(PFUser *user, NSError *error) {
        if (!error) {
            //user logged in
            [self loggedIn];
        }
        else{
            //handle error
        }
    }];
}

#pragma mark - Helper methods

- (void)loggedIn{
    
}

@end
