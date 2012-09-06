//
//  CLViewController.m
//  AlertPreference
//
//  Created by Jiyeon Seo on 12. 9. 6..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import "CLViewController.h"
#import "CLViewCell.h"

@interface CLViewController ()
{
    NSIndexPath *previous;
    UITableViewCell *cell;
    NSArray *alert;
    int checked; // 저장해놓기 근데 계속 저장하려면 디바이스 내에 저장 해둬야할듯 나중나중!
}

@end

@implementation CLViewController
@synthesize alertSelectTableView;


- (void)viewDidLoad
{
    [super viewDidLoad];

    alert = [[NSArray alloc]initWithObjects:@"소리", @"진동",@"소리+진동",@"알림없음", nil ];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - TableView Delegate 
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"numberofrowsinSection");
    return [alert count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    
//    cell = (CLViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell==nil){
        
//        NSArray *topLevelObject = [[NSBundle mainBundle]loadNibNamed:@"CLViewCell" owner:nil options:nil];
//        for(id currentObject in topLevelObject){
//            if([currentObject isKindOfClass:[UITableViewCell class]]){
//                cell = (CLViewCell *)currentObject;
//                break;
//            }
//        }

        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [alert objectAtIndex:[indexPath row]];
//    all = cell.accessoryType;
//    cell.items.text = [alert objectAtIndex:[indexPath row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    http://cafe.naver.com/codebase/152

    UITableViewCellAccessoryType theCheckMark;
    theCheckMark = [tableView cellForRowAtIndexPath:indexPath].accessoryType;
    
    if( theCheckMark == UITableViewCellAccessoryNone ){
        if(previous!=nil){ // 전께 있다면 없애고 
         [tableView cellForRowAtIndexPath:previous].accessoryType = UITableViewCellAccessoryNone;   
        }
        theCheckMark = UITableViewCellAccessoryCheckmark; //just check for "indexpath" cell
        previous = indexPath;

    }
    else{
        theCheckMark = UITableViewCellAccessoryNone;
    }
    
    
    
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = theCheckMark;
}



@end
