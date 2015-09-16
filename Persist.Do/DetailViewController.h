//
//  DetailViewController.h
//  Persist.Do
//
//  Created by Alp Eren Can on 16/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

