//
//  NSObject_Swizzle.h
//  Hillerod
//
//  Created by Lukasz Margielewski on 02/06/15.
//  Copyright (c) 2015 Mobile Fitness. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject(Swizzle)

+ (void)swizzleClassSelector:(SEL)originalSelector withSelector:(SEL)swizzledSelector;
+ (void)swizzleInstanceSelector:(SEL)originalSelector withSelector:(SEL)swizzledSelector;

@end
