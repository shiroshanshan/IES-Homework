//
//  HTSVideoModel.m
//  Homework
//
//  Created by ハン・エンショウ on 2019/07/06.
//  Copyright © 2019 fan. All rights reserved.
//

#import "HTSVideoModel.h"

@implementation HTSVideoModel

+ (NSDictionary *)loadVideoJSONFile{
    NSError *error = nil;
    NSString *JSONFilePath = [[NSBundle mainBundle] pathForResource:@"video" ofType:@"json"];
    NSString *JSONString = [[NSString alloc] initWithContentsOfFile:JSONFilePath encoding:NSUTF8StringEncoding error: &error];
    NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *videoDictionary = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableContainers error:&error];
    return videoDictionary;
}

+ (NSMutableArray *)convertToVideoModelFromArray:(NSArray *)videoArray{
    NSError *error = nil;
    NSMutableArray *modelArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < videoArray.count; i++){
        HTSVideo *video = [[HTSVideo alloc] init];
        video = [MTLJSONAdapter modelOfClass:[HTSVideo class] fromJSONDictionary:[videoArray objectAtIndex:i] error: &error];
        [modelArray addObject:video];
    }
    return modelArray;
}

@end

@implementation HTSVideo

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"digCount": @"data.stats.digg_count",
             @"videoUri": @"data.video.cover.uri"
             };
}

@end