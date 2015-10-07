//
//  ModelController.h
//  CtoF
//
//  Created by Peter Li on 8/14/15.
//  Copyright (c) 2015 Peter Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController;
-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController;
@end

