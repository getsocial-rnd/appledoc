//
//  GBConstantDeclaration.h
//  appledoc
//
//  Created by Vass Gábor on 02/04/2019.
//  Copyright © 2019 Gentle Bytes. All rights reserved.
//

#import "GBModelBase.h"
#import "GBObjectDataProviding.h"
#import "GBEnumConstantProvider.h"

@interface GBExternConstantDefinition : GBModelBase {
@private
    NSString *_constantName;
    NSString *_constantType;
    NSArray *_attributes;
}

+(id)externConstantDefinitionWithName:(NSString *)name type:(NSString*)type attributes:(NSArray*)attributes;

@property (readonly) NSString *constantName;
@property (readonly) NSString *constantType;
@property (readonly) NSArray *attributes;
@property (readonly) BOOL hasAttributes;

@end
