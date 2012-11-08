//
//  RSSEntry.h
//  HU Calendar
//
//  Created by Philip J Browning II on 11/7/12.
//  Copyright (c) 2012 Howard University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSEntry : NSObject
{
    NSString *_entryCategory;         // RSS channel:item:category
    NSDate   *_entryDate;             // RSS channel:item:pubDate
    NSString *_entryDescription;      // RSS channel:item:description
    NSString *_entryGuid;             // RSS channel:item:guid
    BOOL     *_entryGuidIsPermalink;  // RSS channel:item:guid->isPermalink
    NSString *_entryLink;             // RSS channel:item:link
    NSString *_entryTitle;            // RSS channel:item:title}
}

@property (copy) NSString *entryCategory;
@property (copy) NSDate   *entryDate;
@property (copy) NSString *entryDescription;
@property (copy) NSString *entryGuid;
@property        BOOL     *entryGuidIsPermalink;
@property (copy) NSString *entryLink;
@property (copy) NSString *entryTitle;

- (id)initWithEntryTitle:(NSString*)entryTitle
           entryCategory:(NSString*)entryCategory
               entryDate:(NSDate*)entryDate
        entryDescription:(NSString*)entryDescription
               entryLink:(NSString*)entryLink
               entryGuid:(NSString*)entryGuid
    entryGuidIsPermalink:(BOOL*)entryGuidIsPermalink;

@end
