#import "TaskListViewController.h"

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];

    return cell;
}
@end
