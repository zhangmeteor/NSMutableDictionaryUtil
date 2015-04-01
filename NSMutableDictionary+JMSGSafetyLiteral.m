#import "NSMutableDictionary+JMSGSafetyLiteral.h"


@implementation NSMutableDictionary (JMSGSafetyLiteral)

- (id)objectForKeyedSubscript:(id)key {
  return [self objectForKey:key];
}

- (void)setObject:(id)obj forKeyedSubscript:(id)key {
  if (obj == nil){
    return;
  }
  [self setObject:obj forKey:key];
}

+ (instancetype)JMSGDictionaryElementCount:(int)count WithObjectsAndKeys:(id)firstObject, ...{
    __autoreleasing NSMutableDictionary *dic = [[self alloc]init];
  
    if (count == 0) {
        //没参数时返回内容为空的字典
        return dic;
    }
    
    //每个element对应一个key value，所以count数值应为2倍.
    count *= 2;
    
    va_list argumentList;
    va_start(argumentList, firstObject);
    
    for(int i = 0; i < count; i += 2){
        id key,object;
        
        if (i == 0) {
          //由于firstObject不在va_list列表中，所有第一个列表对象应该是key而不是object
          object = firstObject;
          key = va_arg(argumentList, id);
        }else{
            object = va_arg(argumentList, id);
            key = va_arg(argumentList, id);
            if (!key){
                //防止key为空导致崩溃
                continue;
            }
        }
        dic[key] = object;
    }
 
    va_end(argumentList);
    
    return dic;
}

@end