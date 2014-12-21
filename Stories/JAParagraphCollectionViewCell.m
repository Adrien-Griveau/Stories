//
//  ParagraphCollectionViewCell.m
//  Stories
//
//  Created by PENRATH Jean-baptiste on 14/11/2014.
//  Copyright (c) 2014 Jb & Anto. All rights reserved.
//

#import "JAParagraphCollectionViewCell.h"

@implementation JAParagraphCollectionViewCell

-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:self.frame]) {
        
        // Main characteristics of labels in the view
        UIFont *paragraphFont = [UIFont fontWithName:@"News-Plantin-Pro-Regular" size:18.0];
        UIColor *paragraphColor = [UIColor colorWithHue:0.68 saturation:0.45 brightness:0.34 alpha:1];
        UIColor *linkColor = [UIColor colorWithHue:0.08 saturation:0.74 brightness:0.93 alpha:1];
        
        // Initial Setting - Resume Label
        self.paragraphLabel = [JAUITextView new];
        [self.paragraphLabel setScrollEnabled:NO];
        [self.paragraphLabel setEditable:NO];
        [self.paragraphLabel setSelectable:NO];
        [self.paragraphLabel setFont:paragraphFont];
        [self.paragraphLabel setTextColor:paragraphColor];
        self.paragraphLabel.linkColor = linkColor;
        self.paragraphLabel.lineHeight = 1.4;
        self.paragraphLabel.letterSpacing = -0.01;
        
        // Ready to add in parent view
        [self addSubview:self.paragraphLabel];
        
    }
    
    return self;
}

@end