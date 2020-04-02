#import <UIKit/UIKit.h>

@interface TaskItemView : UITableViewCell {
@private
    IBOutlet UILabel *labelTitle;
    IBOutlet UILabel *labelDate;
}

- (void) title:(NSString *)title date:(NSDate *)date;
@end
