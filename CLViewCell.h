//
//  CLViewCell.h
//  AlertPreference
//
//  Created by Jiyeon Seo on 12. 9. 6..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CLViewCell : UITableViewCell
{
    UILabel *items;
    UIImageView *check;
}
@property (nonatomic, strong) IBOutlet UILabel *items;
@property (nonatomic, strong) IBOutlet UIImageView *check;

@end
