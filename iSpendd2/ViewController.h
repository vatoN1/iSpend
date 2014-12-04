//
//  ViewController.h
//  iSpendd2
//
//  Created by Academy387 on 12/3/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UITextField *ageTextField;

@property User* user;

@end

