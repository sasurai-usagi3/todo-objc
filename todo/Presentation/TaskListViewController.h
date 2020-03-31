#import <UIKit/UIKit.h>

@interface TaskListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *table;

@end
