#import "Task.h"

@implementation Task

+ (instancetype) title:(NSString *)title date:(NSDate *)date {
    Task *task = [Task alloc];
    task.title = title;
    task.date = date;

    return task;
}
@end
