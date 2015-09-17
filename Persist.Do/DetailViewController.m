//
//  DetailViewController.m
//  Every.Do
//
//  Created by Alp Eren Can on 08/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "DetailViewController.h"
#import "AddEditViewController.h"

@interface DetailViewController ()


@property (weak, nonatomic) IBOutlet UILabel *todoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *todoDetailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *todoPriorityLabel;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setTodo:(Todo *)newTodo {
    if (_todo != newTodo) {
        _todo = newTodo;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.todo) {
        self.todoTitleLabel.text = self.todo.title;
        self.todoDetailsLabel.text = self.todo.details;
        self.todoPriorityLabel.text = [NSString stringWithFormat:@"Priority: %@", [self.todo priorityToString:self.todo.priority]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewWillAppear:(BOOL)animated {
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editTodo:(id)sender {
    
    AddEditViewController *addTodoVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"AddTodoViewController"];
    addTodoVC.todo = self.todo;
    addTodoVC.stack = self.stack;
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:addTodoVC];
    [self presentViewController:navController animated:YES completion:nil];
    
}

@end
