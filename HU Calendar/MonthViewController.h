//
//  MonthViewController.h
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MonthViewController : UIViewController
{
    IBOutlet UILabel *calendarMonthLabel;
    IBOutlet UILabel *universityNameLabel;
    IBOutlet UINavigationBar *monthlyCalendarNavigationBar;
}

- (IBAction)showPreviousMonthCaledar:(id)sender;
- (IBAction)showNextMonthCaledar:(id)sender;

@end
