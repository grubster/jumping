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
        //
    }
    return self;
}

-(IBAction)cancel:(id)sender {
    [self removeFromParentViewController];
}

@end
