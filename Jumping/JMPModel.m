//
//  JMPModel.m
//  Jumping
//

#import "JMPModel.h"

@implementation JMPModel

- (id)init
{
    self = [super init];
    if (self) {
        self.itens = [[NSMutableArray alloc] initWithObjects:@(0),@(0),@(0),@(0),@(0),@(0),nil];
    }
    return self;
}

-(void)deleteItemAtIndex:(NSInteger)index {
    [self.itens removeObjectAtIndex:index];
}

@end
