//
//  baseDrawing.m
//  Assignment B
//
//  Created by Matt Gray on 2015-02-20.
//  Copyright (c) 2015 Matt Gray. All rights reserved.
//

#import "baseDrawing.h"

@implementation baseDrawing

- (void)drawRect:(CGRect)rect {
    //TEST 1 CODE IMPLEMENTATION
    //Set colors and line width
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
    
    //draw grid borders
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0, self.bounds.size.height);
    CGContextStrokePath(context);

    CGContextMoveToPoint(context, 0, self.bounds.size.height);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, self.bounds.size.width, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width, 0);
    CGContextStrokePath(context);
    
    //draw grid lines
    CGContextMoveToPoint(context, self.bounds.size.width/2, 0);
    CGContextAddLineToPoint(context, self.bounds.size.width/2, self.bounds.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 0, self.bounds.size.height/2);
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height/2);
    CGContextStrokePath(context);
    
    CGColorSpaceRelease(colorspace);
    //END OF TEST 1 CODE IMPLEMENTATION
}


@end