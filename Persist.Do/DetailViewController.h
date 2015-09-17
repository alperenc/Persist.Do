//
//  DetailViewController.h
//  Every.Do
//
//  Created by Alp Eren Can on 08/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"
#import "CoreDataStack.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Todo *todo;

@property (nonatomic) CoreDataStack *stack;
@end

