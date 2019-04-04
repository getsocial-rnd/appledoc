//
//  GBExtendableTypedefEnumData.h
//  appledoc
//
//  Created by Vass Gábor on 04/04/2019.
//  Copyright © 2019 Gentle Bytes. All rights reserved.
//

#import "GBModelBase.h"
#import <Foundation/Foundation.h>
#import "GBExternConstantDefinition.h"

NS_ASSUME_NONNULL_BEGIN

@interface GBExtendableTypedefEnumData : GBModelBase {
@private
    NSString *_type;
    NSString *_name;
    NSArray *_attributes;
    NSMutableArray *_predefinedValues;
}

+(id)extendableTypedefWithName:(NSString *)name type:(NSString*)type attributes:(NSArray*)attributes;
-(void)addPredefinedValue:(GBExternConstantDefinition*)constantDefinition;

@property (readonly) NSString *typeDefName;
@property (readonly) NSString *typeDefType;
@property (readonly) NSArray *attributes;
@property (readonly) NSArray *predefinedValues;
@property (readonly) BOOL hasAttributes;
@property (readonly) BOOL hasPredefinedValues;
@property (readonly) NSString* attributesDescription;

@end

NS_ASSUME_NONNULL_END
