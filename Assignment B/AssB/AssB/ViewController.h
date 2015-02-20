//
//  ViewController.h
//  AssB
//
//  Created by Matt Gray on 2015-02-16.
//  Copyright (c) 2015 Matt Gray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UIView *drawingView;

@property (weak, nonatomic) IBOutlet UIImageView *drawingUIView;
@property (weak, nonatomic) IBOutlet UIButton *drawVectors;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)addPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *V1x0;
@property (weak, nonatomic) IBOutlet UITextField *V1y0;
@property (weak, nonatomic) IBOutlet UITextField *V1x1;
@property (weak, nonatomic) IBOutlet UITextField *V1y1;

@property (weak, nonatomic) IBOutlet UITextField *V2x0;
@property (weak, nonatomic) IBOutlet UITextField *V2y0;
@property (weak, nonatomic) IBOutlet UITextField *V2x1;
@property (weak, nonatomic) IBOutlet UITextField *V2y1;

@property (weak, nonatomic) IBOutlet UITextField *V3x0;
@property (weak, nonatomic) IBOutlet UITextField *V3y0;
@property (weak, nonatomic) IBOutlet UITextField *V3x1;
@property (weak, nonatomic) IBOutlet UITextField *V3y1;



@end

