//
//  CaculatorViewController.m
//  CtoF
//
//  Created by Peter Li on 9/20/15.
//  Copyright © 2015 Peter Li. All rights reserved.
//

#import "CaculatorViewController.h"
#import "Appirater.h"

float changeFactor[] = {0.05, 0.4, 3.0};
float startValues[] = {36.8, 20.0, 100.0};
float cTemp;

@implementation CaculatorViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(increaseNumber:)];
    self.panGesture.minimumNumberOfTouches = 1;
    self.panGesture.maximumNumberOfTouches = 1;
    NSLog(@"viewDidLoad");
    [self.view addGestureRecognizer:self.panGesture];
    cTemp = 0;
    [self updateNumber];
    [self.segmentType addTarget:self
                         action:@selector(segmentChanged:)
               forControlEvents:UIControlEventValueChanged];
}

-(void)segmentChanged:(id)sender{
    NSLog(@"segment changed!");
    cTemp = startValues[[self.segmentType selectedSegmentIndex]];
    [self updateNumber];
    [Appirater userDidSignificantEvent:YES];
}

-(void)increaseNumber:(UIPanGestureRecognizer *)sender {
    NSLog(@"Increase number been called direction %@", @"up");
    
    if(sender.state == UIGestureRecognizerStateChanged || sender.state == UIGestureRecognizerStateEnded) {
        CGPoint velocity = [sender velocityInView:self.view];
        
        cTemp += changeFactor[[self.segmentType selectedSegmentIndex]] * (velocity.y > 0 ? -1:1);
    }
    [self updateNumber];
    
}

-(void)updateNumber {
    [self.numberLabel setText:[NSString stringWithFormat:@"%0.1fC", cTemp]];
    float n = 9.0/5.0 * cTemp + 32.0;
    [self.tofNumberLabel setText:[NSString stringWithFormat:@"%.1fF", n]];
}
@end
