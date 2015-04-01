#import <Foundation/Foundation.h>

@interface NSMutableDictionary (JMSGSafetyLiteral)

- (id)objectForKeyedSubscript:(id)key;

- (void)setObject:(id)obj forKeyedSubscript:(id)key;

+ (instancetype)JMSGDictionaryElementCount:(int)count WithObjectsAndKeys:(id)firstObject, ...;

@end