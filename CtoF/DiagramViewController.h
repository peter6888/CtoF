//
//  DiagramViewController.h
//  CtoF
//
//  Created by Peter Li on 10/6/15.
//  Copyright © 2015 Peter Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiagramViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *typeSegmentedControl;
@property (weak, nonatomic) IBOutlet UIImageView *diagramImageView;

@end
