//
//  DiagramViewController.m
//  CtoF
//
//  Created by Peter Li on 10/6/15.
//  Copyright © 2015 Peter Li. All rights reserved.
//

#import "DiagramViewController.h"

@interface DiagramViewController ()

@end

@implementation DiagramViewController

NSMutableArray *_images;
int imageIndex = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.typeSegmentedControl addTarget:self action:@selector(changeDiagramType:) forControlEvents:UIControlEventValueChanged];
    _images = [NSMutableArray arrayWithObjects:
                    [UIImage imageNamed:[self getLocalizedImageName:@"bodytable"]],
                    [UIImage imageNamed:[self getLocalizedImageName:@"airoventable"]],
                    nil];
    [self.diagramImageView setImage:_images[imageIndex]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeDiagramType:(id)sender{
    NSLog(@"changing diagram type!");

    [self.diagramImageView setImage:_images[imageIndex = !imageIndex]];
}

-(NSString *)getLocalizedImageName: (NSString *)imageName {
        NSString *localizedImageName = [[NSString alloc] initWithFormat:@"%@-%@", imageName, [[NSBundle mainBundle] preferredLocalizations].firstObject];
    return localizedImageName;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
