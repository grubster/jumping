//
//  JMPViewController.m
//  Jumping
//

#import "JMPMainViewController.h"

@implementation JMPMainViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    model = [[JMPModel alloc] init];
}


-(IBAction)addItem:(id)sender {
    JMPEditItem *vc = [[JMPEditItem alloc] initWithDelegate:self];
    [self presentViewController:vc animated:YES completion:nil];    
}

-(IBAction)editItemAtRow:(NSInteger)row {
    JMPEditItem *vc = [[JMPEditItem alloc] initWithDelegate:self andName:@"Felipe Vieira" andPhone:@"(99)9999-9999"];
    [self presentViewController:vc animated:YES completion:nil];
}

-(void)finishEditWithName:(NSString*)name andPhone:(NSString*)phone {
    
}


////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// //////////
#pragma mark - UITableViewDataSource

// Asks the data source for a cell to insert in a particular location of the table view. (required)
- (UITableViewCell *)tableView:(UITableView *)anTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [anTableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    
    if (cell == nil) {
        
        cell = [[JMPTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType  = UITableViewCellAccessoryDisclosureIndicator;
        
    }
    
    cell.textLabel.text = @"Felipe Vieira";
    cell.detailTextLabel.text = @"(99)9999-9999";
    
    return cell;
    
}
// Tells the data source to return the number of rows in a given section of a table view. (required)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [model.itens count];
}

////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// //////////
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)anTableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // If row is deleted, remove it from the list.
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        // Delete from model.
        [model deleteItemAtIndex:indexPath.row];
        
        // Delete from table View.
        [anTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// Tells the delegate that the specified row is now selected.

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    actRow = indexPath.row;
    alertView = [[UIAlertView alloc] initWithTitle:@""
                                    message:@"Seleciona a ação: "
                                    delegate:self
                                    cancelButtonTitle:@"Cancelar"
                                    otherButtonTitles:@"Editar", @"Enviar", @"Deletar", nil];
    [alertView show];
}

////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// ////////// //////////
#pragma mark - UIAlertViewDelegate

// Sent to the delegate when the user clicks a button on an alert view.
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 1:
            [self editItemAtRow:actRow];
            break;
        
        case 2:
            NSLog(@"Send...");
            break;
            
        case 3:
            [self tableView:tableView
         commitEditingStyle:UITableViewCellEditingStyleDelete
          forRowAtIndexPath:[NSIndexPath indexPathForRow:actRow inSection:0]];
            
            break;
            
        default:
            break;
    }
    
}


@end
