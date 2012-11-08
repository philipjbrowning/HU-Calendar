//
//  MonthViewController.m
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import "MonthViewController.h"

@interface MonthViewController ()

@end

@implementation MonthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPreviousMonthCaledar:(id)sender
{
    // Load the previous month's calendar.
}

- (IBAction)showNextMonthCaledar:(id)sender
{
    // Load the next month's calendar.
}

@end
