//
//  HT_AESCrypt.h
//  AESCrypt_test
//
//  Created by 赖利波 on 16/4/26.
//  Copyright © 2016年 吴伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HT_AESCrypt : NSObject

//加密
+ (NSString *)encrypt:(NSString *)message password:(NSString *)password;

//二进制data转换为16进制string
+ (NSString *)convertDataToHexStr:(NSData *)data;

//16进制string转换为二进制data
+ (NSData *)convertHexStrToData:(NSString *)str;

//解密
+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password;

@end
