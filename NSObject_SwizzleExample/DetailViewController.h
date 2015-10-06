//
//  DetailViewController.h
//  NSObject_Swizzle
//
//  Created by Lukasz Margielewski on 06/10/15.
//  Copyright © 2015 Lukasz Margielewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

