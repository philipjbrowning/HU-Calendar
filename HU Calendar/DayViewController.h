//
//  DayViewController.h
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayViewController : UIViewController
{
    IBOutlet UILabel *_RSSEntryCategoryLabel;
    IBOutlet UILabel *_RSSEntryDateLabel;
    IBOutlet UILabel *_RSSEntryDescriptionLabel;
    IBOutlet UILabel *_RSSEntryLinkLabel;
    IBOutlet UILabel *_RSSEntryTitleLabel;
}

@end
