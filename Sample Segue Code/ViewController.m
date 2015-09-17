//
//  ViewController.m
//  Sample Segue Code
//
//  Created by Rob Norback on 9/16/15.
//  Copyright (c) 2015 Norback Solutions, LLC. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)buttonTapped:(UIButton *)sender {
    [self performSegueWithIdentifier:@"tableViewSegue" sender:self];
//    TableViewController *tableController = [[TableViewController alloc] init];
//    tableController.firstName = @"Alice";
//    [self.navigationController pushViewController:tableController animated:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"tableViewSegue"]) {
        TableViewController *tableVC = [segue destinationViewController];
        tableVC.firstName = @"Alice";
    }
}


@end
