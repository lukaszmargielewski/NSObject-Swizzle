//
//  DetailViewController.m
//  NSObject_Swizzle
//
//  Created by Lukasz Margielewski on 06/10/15.
//  Copyright © 2015 Lukasz Margielewski. All rights reserved.
//

#import "DetailViewController.h"
#import "UIViewController+SwizzleExample.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    self.categoryInstanceProperty = @"This is Details instance property for this category";
    [DetailViewController setCategoryClassProperty:@"This is Detail class property for this category"];
    
}

- (void)viewDidAppear:(BOOL)animated{

    NSLog(@"CATEGORY DETAILS INSTANCE PROPERTY: %@", self.categoryInstanceProperty);
    NSLog(@"CATEGORY DETAIL CLASS    PROPERTY: %@", [DetailViewController getCategoryClassProperty]);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
