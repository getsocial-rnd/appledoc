//
//  GBExtendableTypedefEnumData.m
//  appledoc
//
//  Created by Vass Gábor on 04/04/2019.
//  Copyright © 2019 Gentle Bytes. All rights reserved.
//

#import "GBExtendableTypedefEnumData.h"

@implementation GBExtendableTypedefEnumData

+(id)extendableTypedefWithName:(NSString *)name type:(NSString *)type attributes:(NSArray *)attributes
{
    return [[self alloc] initExtendableTypedefWithName:name type:type attributes:attributes];
}

-(id)initExtendableTypedefWithName:(NSString *)name type:(NSString *)type attributes:(NSArray*)attributes
{
    self = [super init];
    if(self)
    {
        _name = name;
        _type = type;
        _attributes = [NSArray arrayWithArray:attributes];
        _predefinedValues = [NSMutableArray array];
    }
    return self;
}

- (NSString *)description {
    return self.typeDefName;
}

- (NSString *)debugDescription {
    return [NSString stringWithFormat:@"extendable typedef %@\n%@", self.typeDefName, self.typeDefType];
}

- (BOOL)isTopLevelObject {
    return YES;
}

- (BOOL)hasAttributes
{
    return self.attributes.count > 0;
}

- (BOOL)hasPredefinedValues
{
    return self.predefinedValues.count > 0;
}

- (void)addPredefinedValue:(GBExternConstantDefinition*)object
{
    [_predefinedValues addObject:object];
}

- (NSString*) attributesDescription
{
    return [self.attributes componentsJoinedByString:@" "];
}

@synthesize typeDefName = _name;
@synthesize typeDefType = _type;
@synthesize attributes = _attributes;
@synthesize predefinedValues = _predefinedValues;
@end
