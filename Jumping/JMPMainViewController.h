//
//  JMPViewController.h
//  Jumping
//

#import <UIKit/UIKit.h>
#import "JMPEditItem.h"

@interface JMPMainViewController : UIViewController {
    IBOutlet UITableView *tableView;
}

-(IBAction)addItem:(id)sender;

@end
