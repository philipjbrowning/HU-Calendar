//
//  DayViewController.m
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import "DayViewController.h"
#import "RSSEntry.h"

@interface DayViewController ()

@end

@implementation DayViewController

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
    NSString *newCategory = @"Education";
    
    NSString *newDateAsString = @"Mon, 05 Nov 2012 05:06:41 GMT";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    // this is imporant - we set our input date format to match our input string
    // if format doesn't match you'll get nil from your string, so be careful
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSDate *newDate = [[NSDate alloc] init];
    newDate = [dateFormatter dateFromString:newDateAsString];
    
    NSString *newDescription = @"WASHINGTON (November 5, 2012) – Attorneys from two prominent civil rights organizations spoke about current threats and the history of struggle in the African-American voting rights movement during the Gwendolyn S. and Colbert I. King Endowed Chair in Public Policy lecture series on Wednesday, Oct. 24. The 2012-2013 series is titled “Civic equality in the 21st Century: the Political Process, Education, Economic Power, and Individual Rights.” Former President and Director-Counsel of the NAACP Legal Defense and Educational Fund Elaine R. Jones  is facilitating the King lecture series this year.";
    NSString *newGuid = @"http://www.howard.edu/newsroom/releases/2012/20121105KingLectureThreatstoBlackVotingStillaNationalProblem.html";
    NSString *newLink = @"http://www.howard.edu/newsroom/releases/2012/20121105KingLectureThreatstoBlackVotingStillaNationalProblem.html";
    NSString *newTitle = @"King Lecture: Threats to Black Voting Still a National Problem";
    BOOL newGuidIsPermalink = TRUE;

    RSSEntry *newEntry = [[RSSEntry alloc] initWithEntryTitle:newTitle entryCategory:newCategory entryDate:newDate entryDescription:newDescription entryLink:newLink entryGuid:newGuid entryGuidIsPermalink:&newGuidIsPermalink];
    
    [_RSSEntryCategoryLabel setText:[newEntry entryCategory]];
    [_RSSEntryDateLabel setText:newDateAsString]; // FIX to format the other way
    /*
     * http://stackoverflow.com/questions/3917250/converting-nsstring-to-nsdate-and-back-again
     * 
     * NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
     * [dateFormatter setDateFormat:@"dd-MM-yyyy"];
     * NSString *strDate = [dateFormatter stringFromDate:[NSDate date]];
     * NSLog(@"%@", strDate);
     * [dateFormatter release]; <-- Do not need
     */
    [_RSSEntryDescriptionLabel setText:[newEntry entryDescription]];
    [_RSSEntryLinkLabel setText:[newEntry entryLink]];
    [_RSSEntryTitleLabel setText:[newEntry entryTitle]];
    
    UITableViewCell *newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    [[newCell textLabel] setText:newTitle];
    [[newCell detailTextLabel] setText:newTitle];
    
    [_RSSNewsTableView insertSubview:newCell atIndex:0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

/*
 <item>
 <title>
 
 </title>
 <link></link>
 <category></category>
 <description>
 </description>
 <guid isPermaLink="true"></guid>
 </item>
*/