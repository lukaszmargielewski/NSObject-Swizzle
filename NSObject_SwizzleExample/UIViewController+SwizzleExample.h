//
//  UIViewController_MIHTheme.h
//  Hillerod
//
//  Created by Lukasz Margielewski on 05/06/15.
//  Copyright (c) 2015 Mobile Fitness. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController(SwizzleExample)

@property (nonatomic, strong) id categoryInstanceProperty;

+ (void)setCategoryClassProperty:(id)categoryClassProperty;
+ (id)getCategoryClassProperty;

@end