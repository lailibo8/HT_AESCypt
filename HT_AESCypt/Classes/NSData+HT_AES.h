//
//  NSData+HT_AES.h
//  AESCrypt_test
//
//  Created by 赖利波 on 16/4/26.
//  Copyright © 2016年 吴伟. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NSString;
@interface NSData (HT_AES)

- (NSData *)AES256EncryptWithKey:(NSString *)key;

- (NSData *)AES256DecryptWithKey:(NSString *)key;
@end
