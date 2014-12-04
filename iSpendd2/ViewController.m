//
//  ViewController.m
//  iSpendd2
//
//  Created by Academy387 on 12/3/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ViewController.h"
#import "ShowViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)saveClicked:(id)sender {
    self.user = [[User alloc] initWithFirstName:self.firstNameTextField.text andLastName:self.lastNameTextField.text andAge:[self.ageTextField.text integerValue]];
    
    //self.resultLabel.text = [user getFullName];
    
    [self performSegueWithIdentifier:@"showUser" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqual: @"showUser"]){
        ShowViewController *controller = (ShowViewController*)[segue destinationViewController];
        //controller.resultLabel.text = [self.user getFullName];
        [controller setNewUser:self.user];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
