//
//  JMPEditItem.m
//  Jumping
//
//

#import "JMPEditItem.h"

@implementation JMPEditItem

-(id)initWithDelegate:(id)anDelegate {
    self = [super initWithNibName:@"JMPEditItem" bundle:nil];
    if (self) {
        self.delegate = anDelegate;
    }
    return self;
}

-(id)initWithDelegate:(id)anDelegate andName:(NSString*)anName andPhone:(NSString*)anPhone {
    self = [self initWithDelegate:self];
    if (self) {
        self.name = anName;
        self.phone = anPhone;
    }
    return self;
}

-(IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)done:(id)sender {
    [self.delegate finishEditWithName:nameField.text andPhone:phoneField.text];
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    nameField.text = self.name;
    phoneField.text = self.phone;
}

@end
