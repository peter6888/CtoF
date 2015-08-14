//
//  DataViewController.h
//  CtoF
//
//  Created by Peter Li on 8/14/15.
//  Copyright (c) 2015 Peter Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end

