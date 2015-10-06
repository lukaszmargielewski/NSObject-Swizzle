//
//  UIViewController_MIHTheme.m
//  Hillerod
//
//  Created by Lukasz Margielewski on 05/06/15.
//  Copyright (c) 2015 Mobile Fitness. All rights reserved.
//

#import "UIViewController+SwizzleExample.h"
#import "NSObject+Swizzle.h"
#import <objc/runtime.h>

@implementation UIViewController(SwizzleExample)

static id _categoryClassProperty;
static char categoryInstancePropertyAsociatedObjectKey;
static char categoryClassPropertyAsociatedObjectKey;

@dynamic categoryInstanceProperty;


-(void)setCategoryInstanceProperty:(id)categoryInstanceProperty
{
    objc_setAssociatedObject(self, &categoryInstancePropertyAsociatedObjectKey, categoryInstanceProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(id)categoryInstanceProperty
{
    return (NSObject*)objc_getAssociatedObject(self, &categoryInstancePropertyAsociatedObjectKey);
}



+ (void)setCategoryClassProperty:(id)categoryClassProperty{

    objc_setAssociatedObject(self, &categoryClassPropertyAsociatedObjectKey, categoryClassProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

+ (id)getCategoryClassProperty{

    return (NSObject*)objc_getAssociatedObject(self, &categoryClassPropertyAsociatedObjectKey);
}

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSLog(@"loading class: %@", NSStringFromClass([self class]));

        [self swizzleInstanceSelector:@selector(viewDidLoad) withSelector:@selector(stats_viewDidLoad)];
        [self swizzleInstanceSelector:@selector(viewWillAppear:) withSelector:@selector(stats_viewWillAppear:)];
        [self swizzleInstanceSelector:@selector(viewDidAppear:) withSelector:@selector(stats_viewDidAppear:)];
        [self swizzleInstanceSelector:@selector(viewWillDisappear:) withSelector:@selector(stats_viewWillDisappear:)];
        [self swizzleInstanceSelector:@selector(viewDidDisappear:) withSelector:@selector(stats_viewDidDisappear:)];
    });
}

- (void)stats_viewDidLoad {
    
    NSLog(@"stats_viewDidLoad: %@", NSStringFromClass(self.class));
    [self stats_viewDidLoad];
    
}
- (void)stats_viewWillAppear:(BOOL)animated{
    
    NSLog(@"stats_viewWillAppear: %@", NSStringFromClass(self.class));
    [self stats_viewWillAppear:animated];
}
- (void)stats_viewDidAppear:(BOOL)animated{
    
    NSLog(@"stats_viewDidAppear: %@", NSStringFromClass(self.class));
    [self stats_viewDidAppear:animated];
}
- (void)stats_viewWillDisappear:(BOOL)animated{
    
    NSLog(@"stats_viewWillDisappear: %@", NSStringFromClass(self.class));
    [self stats_viewWillDisappear:animated];
}
- (void)stats_viewDidDisappear:(BOOL)animated{
    
    NSLog(@"stats_viewDidDisappear: %@", NSStringFromClass(self.class));
    [self stats_viewDidDisappear:animated];
}

@end

