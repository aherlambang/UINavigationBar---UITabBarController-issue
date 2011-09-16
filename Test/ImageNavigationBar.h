//
//  ImageNavigationBar.h
//  VoteBooth
//
//  Created by Aditya Herlambang on 9/4/11.
//  Copyright 2011 University of Arizona. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageNavigationBar : UINavigationBar
{
    UIImage * _image;
}

@property (nonatomic, retain) UIImage * image;

@end
