//
//  JMPEditItem.h
//  Jumping
//
//

#import <UIKit/UIKit.h>
#import "JMPMainViewController.h"

@interface JMPEditItem : UIViewController {
    IBOutlet UITextField *nameField;
    IBOutlet UITextField *phoneField;
}

@property (strong) id delegate;
@property (strong) NSString *name;
@property (strong) NSString *phone;


-(id)initWithDelegate:(id)anDelegate;
-(id)initWithDelegate:(id)anDelegate andName:(NSString*)anName andPhone:(NSString*)anPhone;

-(IBAction)cancel:(id)sender;

-(IBAction)done:(id)sender;

@end
