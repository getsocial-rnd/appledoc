//
//  GBConstantDeclaration.m
//  appledoc
//
//  Created by Vass Gábor on 02/04/2019.
//  Copyright © 2019 Gentle Bytes. All rights reserved.
//

#import "GBExternConstantDefinition.h"

@implementation GBExternConstantDefinition

+(id)externConstantDefinitionWithName:(NSString *)name type:(NSString *)type attributes:(NSArray *)attributes
{
    return [[self alloc] initExternConstantDefinitionWithName:name type:type attributes:attributes];
}

-(id)initExternConstantDefinitionWithName:(NSString *)name type:(NSString *)type attributes:(NSArray*)attributes
{
    self = [super init];
    if(self)
    {
        _constantName = name;
        _constantType = type;
        _attributes = [NSArray arrayWithArray:attributes];
    }
    return self;
}

- (NSString *)description {
    return self.constantName;
}

- (NSString *)debugDescription {
    return [NSString stringWithFormat:@"extern constant %@\n%@", self.constantName, self.constantType];
}

- (BOOL)isTopLevelObject {
    return YES;
}

- (BOOL)hasAttributes
{
    return self.attributes.count > 0;
}

@synthesize constantName = _constantName;
@synthesize constantType = _constantType;
@synthesize attributes = _attributes;

@end
