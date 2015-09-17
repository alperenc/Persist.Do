//
//  Todo+CoreDataProperties.h
//  Persist.Do
//
//  Created by Alp Eren Can on 16/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Todo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *details;
@property (nonatomic) BOOL completed;
@property (nonatomic) int16_t priority;

@end

NS_ASSUME_NONNULL_END
