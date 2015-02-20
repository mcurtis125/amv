//
//  draw2D.m
//  AssB
//
//  Created by Matt Gray on 2015-02-18.
//  Copyright (c) 2015 Matt Gray. All rights reserved.
//

#import "draw2D.h"

@implementation draw2D


- (void)drawRect:(CGRect)rect {
    NSLog(@"here");
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();

    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0, self.bounds.size.height);
    CGContextStrokePath(context);
    //CGColorSpaceRelease(colorspace);
    //CGColorRelease(color);

    CGContextMoveToPoint(context, 0, self.bounds.size.height);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, self.bounds.size.width, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width, 0);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, self.bounds.size.width/2, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width/2, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 0, self.bounds.size.height/2);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height/2);
    CGContextStrokePath(context);
    
    CGColorSpaceRelease(colorspace);
}


@end
