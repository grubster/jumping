//
//  JMPViewController.h
//  Jumping
//

#import <UIKit/UIKit.h>
#import "JMPEditItem.h"
#import "JMPTableViewCell.h"
#import "JMPModel.h"

@interface JMPMainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>{
    IBOutlet UITableView *tableView;
    
    UIAlertView *alertView;
    NSInteger actRow;
    
    JMPModel *model;
}

-(IBAction)addItem:(id)sender;

-(void)finishEditWithName:(NSString*)name andPhone:(NSString*)phone;

@end
