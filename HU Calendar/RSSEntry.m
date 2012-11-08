//
//  RSSEntry.m
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import "RSSEntry.h"

@implementation RSSEntry

@synthesize entryCategory = _entryCategory;
@synthesize entryDate = _entryDate;
@synthesize entryDescription = _entryDescription;
@synthesize entryGuid = _entryGuid;
@synthesize entryGuidIsPermalink = _entryGuidIsPermalink;
@synthesize entryLink = _entryLink;
@synthesize entryTitle = _entryTitle;

- (id)initWithEntryTitle:(NSString*)entryTitle
           entryCategory:(NSString*)entryCategory
               entryDate:(NSDate*)entryDate
        entryDescription:(NSString*)entryDescription
               entryLink:(NSString*)entryLink
               entryGuid:(NSString*)entryGuid
    entryGuidIsPermalink:(BOOL*)entryGuidIsPermalink
{
    if ((self = [super init])) {
        _entryCategory = [entryCategory copy];
        _entryDate = [entryDate copy];
        _entryDescription = [entryDescription copy];
        _entryGuid = [entryGuid copy];
        _entryGuidIsPermalink = entryGuidIsPermalink;
        _entryLink = [entryLink copy];
        _entryTitle = [entryTitle copy];
    }
    return self;
}

@end
