#import "TaskListViewController.h"
#import "TaskItemView.h"

@implementation TaskListViewController
@synthesize table;

- (void)viewDidLoad {
    [super viewDidLoad];

    table.delegate = self;
    table.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSBundle *bundle = [NSBundle mainBundle];
    UINib *nib2 = [UINib nibWithNibName:@"TaskItemView" bundle:bundle];

    TaskItemView *item = [nib2 instantiateWithOwner: self options: nil][0];

    return item;
}
@end
