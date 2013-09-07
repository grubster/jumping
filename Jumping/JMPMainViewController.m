//
//  JMPViewController.m
//  Jumping
//

#import "JMPMainViewController.h"

@implementation JMPMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addItem:(id)sender {
    JMPEditItem *vc = [[JMPEditItem alloc] initWithDelegate:self];
    [self presentViewController:vc animated:YES completion:nil];    
}

@end
