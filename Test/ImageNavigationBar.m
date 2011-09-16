//
//  ImageNavigationBar.m
//  VoteBooth
//
//  Created by Aditya Herlambang on 9/4/11.
//  Copyright 2011 University of Arizona. All rights reserved.
//

#import "ImageNavigationBar.h"

@implementation ImageNavigationBar
@synthesize image = _image;

-(void) drawRect:(CGRect)rect 
{
    if (self.image != nil){
        [self.image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    }else{
        [super drawRect:rect];
    }
}

- (void) dealloc
{
    [_image release];
    [super dealloc];
}
@end
