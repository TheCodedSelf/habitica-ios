//
//  Task.m
//  HabitRPG
//
//  Created by Phillip Thelen on 23/03/14.
//  Copyright (c) 2014 Phillip Thelen. All rights reserved.
//

#import "Task.h"
#import "ChecklistItem.h"
#import "Tag.h"
#import "User.h"


@implementation Task

@dynamic attribute;
@dynamic completed;
@dynamic dateCreated;
@dynamic down;
@dynamic id;
@dynamic notes;
@dynamic priority;
@dynamic streak;
@dynamic text;
@dynamic type;
@dynamic up;
@dynamic value;
@dynamic monday;
@dynamic tuesday;
@dynamic wednesday;
@dynamic thursday;
@dynamic friday;
@dynamic saturday;
@dynamic sunday;
@dynamic checklist;
@dynamic tags;
@dynamic user;



- (BOOL) dueToday {
    NSDate *today = [NSDate date];
    int weekdayID = [[[NSCalendar currentCalendar] components:NSWeekdayCalendarUnit fromDate:today] weekday];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *weekdayKey = [dateFormatter standaloneWeekdaySymbols][weekdayID-1];
    weekdayKey = [weekdayKey lowercaseString];
    return [[self valueForKey:weekdayKey] boolValue];
}
@end