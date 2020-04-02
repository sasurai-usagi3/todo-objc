#import "TaskItemView.h"

@interface TaskItemView()
@property IBOutlet UILabel *labelTitle;
@property IBOutlet UILabel *labelDate;
@end

@implementation TaskItemView

- (void) title:(NSString *)title date:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    [formatter setDateFormat:@"yyyy-MM-dd"];

    self.labelTitle.text = title;
    self.labelDate.text = [formatter stringFromDate:date];
}
@end
