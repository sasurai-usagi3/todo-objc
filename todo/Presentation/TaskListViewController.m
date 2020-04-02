#import "TaskListViewController.h"
#import "TaskItemView.h"
#import "Task.h"

@implementation TaskListViewController {
@private NSArray *tasks;
}
@synthesize table;

- (void)viewDidLoad {
    [super viewDidLoad];

    table.delegate = self;
    table.dataSource = self;

    // とりあえず仮で入れとく
    Task *task1 = [Task title:@"test1" date:[NSDate dateWithTimeIntervalSince1970:24 * 60 * 1000]];
    Task *task2 = [Task title:@"test2" date:[NSDate dateWithTimeIntervalSince1970:24 * 60 * 2000]];
    Task *task3 = [Task title:@"test3" date:[NSDate dateWithTimeIntervalSince1970:24 * 60 * 3000]];

    tasks = [NSArray arrayWithObjects:task1, task2, task3, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSBundle *bundle = [NSBundle mainBundle];
    UINib *nib = [UINib nibWithNibName:@"TaskItemView" bundle:bundle];
    TaskItemView *item = [nib instantiateWithOwner: self options: nil][0];
    Task *task = tasks[indexPath.row];

    [item title:task.title date:task.date];

    return item;
}
@end
