#import "TaskItemView.h"

@implementation TaskItemView

- (void) title:(NSString *)title date:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    [formatter setDateFormat:@"yyyy-MM-dd"];

    labelTitle.text = title;
    labelDate.text = [formatter stringFromDate:date];
}
@end
