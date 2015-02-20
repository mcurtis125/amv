//
//  ViewController.m
//  AssB
//
//  Created by Matt Gray on 2015-02-16.
//  Copyright (c) 2015 Matt Gray. All rights reserved.
//

#import "ViewController.h"
#import "draw2D.h"

@interface ViewController ()

@end

@implementation ViewController

draw2D *draw;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"drawing a line");
    
    draw = (draw2D *) [self view];
    
    [draw setNeedsDisplay];
    [draw setNeedsDisplay];
    [draw setNeedsDisplay];[draw setNeedsDisplay];
    
    
    /*[self drawALine:0 y0:0 x1:100 y1:100];
    [self.view setNeedsDisplay];
    [self.view setNeedsDisplay];
    [self.view setNeedsDisplay];*/
    //[self drawALine:100 y0:0 x1:230 y1:20];
    //[self drawALine:108 y0:108 x1:0 y1:0];
    //draw2D *draw = [[draw2D alloc] init];
    //[self.drawingView drawLine:0 y0:0 x1:100 y1:100];
    //[(draw2D *)self.drawingView drawLine:0 y0:0 x1:100 y1:100];
    //[self.drawingView setNeedsDisplay];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)drawALine:(int)x0
              y0:(int)y0
              x1:(int)x1
              y1:(int)y1
           color:(UIColor*)color{
    
    double xLengthScaleFactor = (self.view.frame.size.width - self.view.center.x)/100;
    double yLengthScaleFactor = (self.view.frame.size.height - self.view.center.y)/100;
    
    y0 = y0 * yLengthScaleFactor;
    y1 = y1 * yLengthScaleFactor;
    
    x0 = x0*xLengthScaleFactor;
    x1 = x1*xLengthScaleFactor;
    
    x0 = x0 + self.view.center.x;
    x1 = x1 + self.view.center.x;
    y0 = self.view.center.y - y0;
    y1 = self.view.center.y - y1;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.drawingUIView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), x0, y0);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), x1, y1);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), 10);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 2);
    CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [color CGColor]);
    //CGContextSetRGBStrokeColor(BLU);
    //CGContextSetBlendMode(UIGraphicsGetCurrentContext(),kCGBlendModeSourceAtop);
    
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    //CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathStroke);
    
    self.drawingUIView.image = UIGraphicsGetImageFromCurrentImageContext();
    //[self.drawingView setAlpha:opacity];
    UIGraphicsEndImageContext();

    
    
}
- (IBAction)addPressed:(id)sender {
    int newX0 = [_V1x0.text intValue] + [_V2x0.text intValue] + [_V3x0.text intValue];
    int newY0 = [_V1y0.text intValue] + [_V2y0.text intValue] + [_V3y0.text intValue];
    int newX1 = [_V1x1.text intValue] + [_V2x1.text intValue] + [_V3x1.text intValue];
    int newY1 = [_V1y1.text intValue] + [_V2y1.text intValue] + [_V3y1.text intValue];
    
    NSLog(@"drawing x0,y0,x1,y1: %d,%d,%d,%d", newX0, newY0, newX1, newY1);
    
    self.drawingUIView.image = nil;
    _resultLabel.text = [NSString stringWithFormat:@"(%d,%d) to (%d,%d)",newX0,newY0,newX1,newY1];

    [self drawALine:newX0 y0:newY0 x1:newX1 y1:newY1 color:[UIColor blackColor]];
    [self drawCurrentVectors];
}


- (IBAction)dotPressed:(id)sender {
    int result = (([_V1x1.text intValue] - [_V1x0.text intValue])*([_V2x1.text intValue] - [_V2x0.text intValue])) + (([_V1y1.text intValue] - [_V1y0.text intValue])*([_V2y1.text intValue] - [_V2y0.text intValue]));
    _resultLabel.text = [NSString stringWithFormat:@"%d",result];
    
}

- (IBAction)crossPressed:(id)sender {
}


- (IBAction)drawVectorsPressed:(id)sender {
    self.drawingUIView.image = nil;
    [self drawCurrentVectors];
}

-(void)drawCurrentVectors{
    [self drawALine:[_V1x0.text intValue] y0:[_V1y0.text intValue] x1:[_V1x1.text intValue] y1:[_V1y1.text intValue] color:[UIColor redColor]];
    [self drawALine:[_V2x0.text intValue] y0:[_V2y0.text intValue] x1:[_V2x1.text intValue] y1:[_V2y1.text intValue] color:[UIColor blueColor]];
    [self drawALine:[_V3x0.text intValue] y0:[_V3y0.text intValue] x1:[_V3x1.text intValue] y1:[_V3y1.text intValue] color:[UIColor greenColor]];
}

@end
