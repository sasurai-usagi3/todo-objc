#import <Foundation/Foundation.h>

@interface Task : NSObject
@property(nonatomic) NSString *title;
@property(nonatomic) NSDate *date;

+ (instancetype) title:(NSString *)title date: (NSDate*) date;
@end
