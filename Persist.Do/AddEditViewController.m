//
//  AddTodoViewController.m
//  Every.Do
//
//  Created by Alp Eren Can on 08/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "AddEditViewController.h"

@interface AddEditViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailsTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *prioritySegmentedControl;

@end

@implementation AddEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.todo) {
        self.titleTextField.text = self.todo.title;
        self.detailsTextField.text = self.todo.details;
        self.prioritySegmentedControl.selectedSegmentIndex = self.todo.priority;
    }
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = cancelButton;
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addTodo)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

-(void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addTodo {
    if (!self.todo) {
        self.todo = [NSEntityDescription insertNewObjectForEntityForName:TODO inManagedObjectContext:self.stack.managedObjectContext];
    }
    
    self.todo.title = self.titleTextField.text;
    self.todo.details = self.detailsTextField.text;
    self.todo.priority = self.prioritySegmentedControl.selectedSegmentIndex;
    
    [self.stack saveContext];

    [self dismiss];
//    [self.navigationController popViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
