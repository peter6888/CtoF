//
//  CaculatorViewController.h
//  CtoF
//
//  Created by Peter Li on 9/20/15.
//  Copyright © 2015 Peter Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CaculatorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *tofNumberLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentType;
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGesture;
@end
