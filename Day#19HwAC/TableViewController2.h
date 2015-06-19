//
//  TableViewController2.h
//  Day#19HwAC
//
//  Created by lalaleelala on 6/19/15.
//  Copyright (c) 2015 lalaleelala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController2 : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    int sectionNum;
    NSArray *arraySection;
}
@end
