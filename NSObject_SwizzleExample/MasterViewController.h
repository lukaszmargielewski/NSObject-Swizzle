//
//  MasterViewController.h
//  NSObject_Swizzle
//
//  Created by Lukasz Margielewski on 06/10/15.
//  Copyright © 2015 Lukasz Margielewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

