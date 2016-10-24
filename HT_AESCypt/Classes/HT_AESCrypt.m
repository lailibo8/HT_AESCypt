//
//  HT_AESCrypt.m
//  AESCrypt_test
//
//  Created by 赖利波 on 16/4/26.
//  Copyright © 2016年 吴伟. All rights reserved.
//

#import "HT_AESCrypt.h"
#import "NSData+HT_AES.h"
@implementation HT_AESCrypt

//加密
+ (NSString *)encrypt:(NSString *)message password:(NSString *)password {
    
    //将nsstring转化为nsdata
    NSData *data = [message dataUsingEncoding:NSUTF8StringEncoding];
    //AES加密
    NSData *encryptedData = [data AES256EncryptWithKey:password];
    //二进制data转换为16进制string
    NSString *base64EncodedString = [HT_AESCrypt convertDataToHexStr:encryptedData];
    
    //返回大写字符串
    return [base64EncodedString uppercaseString];
}

//二进制data转换为16进制string
+ (NSString *)convertDataToHexStr:(NSData *)data {
    if (!data || [data length] == 0) {
        return @"";
    }
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:[data length]];
    
    [data enumerateByteRangesUsingBlock:^(const void *bytes, NSRange byteRange, BOOL *stop) {
        unsigned char *dataBytes = (unsigned char*)bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString *hexStr = [NSString stringWithFormat:@"%x", (dataBytes[i]) & 0xff];
            if ([hexStr length] == 2) {
                [string appendString:hexStr];
            } else {
                [string appendFormat:@"0%@", hexStr];
            }
        }
    }];
    
    return string;
}

//16进制string转换为二进制data
+ (NSData *)convertHexStrToData:(NSString *)str {
    int len = (int)[str length] / 2;// Target length
    unsigned char *buf =malloc(len);
    unsigned char *whole_byte = buf;
    char byte_chars[3] = {'\0','\0','\0'};
    
    int i;
    for (i=0; i < [str length] / 2; i++) {
        byte_chars[0] = [str characterAtIndex:i*2];
        byte_chars[1] = [str characterAtIndex:i*2+1];
        *whole_byte = strtol(byte_chars, NULL, 16);
        whole_byte++;
    }
    
    NSData *data = [NSData dataWithBytes:buf length:len];
    free( buf );
//    return data;
    
    return data;
}

//解密
+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password {
    
//    NSData *decryptedData = [[HT_AESCrypt convertHexStrToData:base64EncodedString] AES256DecryptWithKey:password];
    //16进制转2进制data
    NSData *hexData = [HT_AESCrypt convertHexStrToData:base64EncodedString];
    //AES解密
    NSData *decryptedData = [hexData AES256DecryptWithKey:password];
    //UTF8编码
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}

@end
