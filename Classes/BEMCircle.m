//
//  BEMCircle.m
//  SimpleLineGraph
//
//  Created by Bobo on 12/27/13. Updated by Sam Spencer on 1/11/14.
//  Copyright (c) 2013 Boris Emorine. All rights reserved.
//  Copyright (c) 2014 Sam Spencer.
//

#import "BEMCircle.h"

@implementation BEMCircle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, rect);
    [self.Pointcolor set];
    CGContextFillPath(ctx);
}


- (void) setImage: (UIImage *) image{


    UIImageView *imageView = [[UIImageView alloc] init];

    imageView.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIColor *color = [UIColor colorWithRed:0.69 green:0.14 blue:0.14 alpha:1.0];
    [imageView setTintColor:color];

    float margin = 3.5f;

    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView.frame = CGRectMake(self.bounds.origin.x+ margin, self.bounds.origin.y + margin, self.bounds.size.width - margin*2, self.bounds.size.height - margin*2);

    [imageView setContentMode:UIViewContentModeScaleToFill];

    // add the imageview to the superview
    [self addSubview:imageView];

}

@end
