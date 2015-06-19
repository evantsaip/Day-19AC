//
//  ViewController2.h
//  Day#19HwAC
//
//  Created by lalaleelala on 6/16/15.
//  Copyright (c) 2015 lalaleelala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController <UIGestureRecognizerDelegate>
{
    NSDictionary *dict;
    NSArray *info;
    NSArray *imageArray;
    NSArray *name;
    int count, i,indext1,indext2;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *lable1;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *previous;
@property (weak, nonatomic) IBOutlet UIButton *next;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)valueSegment:(id)sender;


@end
