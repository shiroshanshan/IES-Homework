//
//  HTSUserModel.m
//  HTSSimpleProfile
//
//  Created by ハン・エンショウ on 2019/07/10.
//  Copyright © 2019 fan. All rights reserved.
//

#import "HTSUserModel.h"

@implementation HTSUserModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"avatarJpgUriString": @"data.avatar_jpg_uri",
             @"birthdayDescriptionString": @"data.birthday_description",
             @"cityString": @"data.city",
             @"fanTicketCountNumber": @"data.fan_ticket_count",
             @"nicknameString": @"data.nickname",
             @"payGradeBannerString": @"data.pay_grade.grade_banner",
             @"gradeIconUriString": @"data.pay_grade.grade_icon_uri",
             @"signatureString": @"data.signature",
             @"followingCountNumber": @"data.stats.following_count",
             @"followerCountNumber": @"data.stats.follower_count"
             };
}

@end
