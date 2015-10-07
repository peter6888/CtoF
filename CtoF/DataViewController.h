//
//  DataViewController.h
//  CtoF
//
//  Created by Peter Li on 8/14/15.
//  Copyright (c) 2015 Peter Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) id dataObject;
@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

