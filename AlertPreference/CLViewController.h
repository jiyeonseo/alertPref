//
//  CLViewController.h
//  AlertPreference
//
//  Created by Jiyeon Seo on 12. 9. 6..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLViewController : UIViewController <UITableViewDelegate>
{
    UITableView *alertSelectTableView;
    
    
}
@property (nonatomic, strong) UITableView *alertSelectTableView;

@end
