//
//  HTSVideoModel.h
//  Homework
//
//  Created by ハン・エンショウ on 2019/07/06.
//  Copyright © 2019 fan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@import Mantle;

@interface HTSVideo : MTLModel <MTLJSONSerializing>

@property (nonatomic, readwrite) NSNumber *digCount;
@property (nonatomic, readwrite) NSString *videoUri;

@end //HTSVideo

@interface HTSVideoModel : NSObject

+ (NSDictionary *)loadVideoJSONFile;
+ (NSMutableArray *) convertToVideoModelFromArray: (NSArray *)videoArray;

@end //HTSVideoModel

NS_ASSUME_NONNULL_END