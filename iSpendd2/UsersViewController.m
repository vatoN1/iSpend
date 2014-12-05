//
//  UsersViewController.m
//  iSpendd2
//
//  Created by Academy387 on 12/5/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "UsersViewController.h"

@interface UsersViewController ()

@end

@implementation UsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    User *user1 = [[User alloc] initWithFirstName:@"User" andLastName:@"Userovic" andAge:21];
    User *user2 = [[User alloc] initWithFirstName:@"User" andLastName:@"Userovic" andAge:21];
    User *user3 = [[User alloc] initWithFirstName:@"User" andLastName:@"Userovic" andAge:21];
    User *user4 = [[User alloc] initWithFirstName:@"User" andLastName:@"Userovic" andAge:21];
    User *user5 = [[User alloc] initWithFirstName:@"User" andLastName:@"Userovic" andAge:21];
    self.users = [[NSArray alloc] initWithObjects:user1, user2, user3, user4, user5, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.users count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    
    if(indexPath.row % 2 == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"showUser"];
    }
    else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"showUser2"];
    }
    
    User *user = (User*)[self.users objectAtIndex:indexPath.row];
    cell.textLabel.text = [user getFullName];
    return cell;
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
