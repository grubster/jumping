//
//  JMPModel.h
//  Jumping
//

#import <Foundation/Foundation.h>

@interface JMPModel : NSObject

@property (strong) NSMutableArray *itens;

-(void)deleteItemAtIndex:(NSInteger)index;

@end
