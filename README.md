# NSMutableDictionaryUtil
a tool you will never consider whether  there's a nil object in NSMutableDictionary init.

This tool is a tool to solve the condition: you need to initialize a NSMutableDictionary.but the value can be nil and you don't hope all object after nil will be abandon which the Apple does. 


##Usage

    #import "NSMutableDictionary+JMSGSafetyLiteral.h"
    NSMutableDictionary *exampleDictionary = [NSMutableDictionary JMSGDictionaryElementCount:2 WithObjectsAndKeys:object,@"key",object2,@"key2"];


