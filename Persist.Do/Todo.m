//
//  Todo.m
//  Persist.Do
//
//  Created by Alp Eren Can on 16/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "Todo.h"

@implementation Todo

// Insert code here to add functionality to your managed object subclass

- (NSString *)priorityToString:(Priority)priority {
    switch (priority) {
        case 0:
            return @"Low";
            break;
        case 1:
            return @"High";
            break;
        case 2:
            return @"Critical";
            break;
        default:
            return @"Priorty not set.";
            break;
    }
}

@end
