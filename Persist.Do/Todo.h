//
//  Todo.h
//  Persist.Do
//
//  Created by Alp Eren Can on 16/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

typedef NS_ENUM(NSUInteger, Priority) {
    Low,
    High,
    Critical,
};

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
- (NSString *)priorityToString:(Priority)priority;

@end

NS_ASSUME_NONNULL_END

#import "Todo+CoreDataProperties.h"
