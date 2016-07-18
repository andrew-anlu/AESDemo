//
//  NSString+AESCrypt.h
//
//  Created by Michael Sedlaczek, Gone Coding on 2011-02-22
//

#import <Foundation/Foundation.h>
#import "NSData+AESCrypt.h"

@interface NSString (SiruoxianAESCrypt)

- (NSString *)AES256EncryptWithKey:(NSString *)key;
- (NSString *)AES256DecryptWithKey:(NSString *)key;

@end


/*
 例子
 NSString *plainString = @"This string will be encrypted";
 NSString *key = @"YourEncryptionKey"; // should be provided by a user
 
 //SLog( @"Original String: %@", plainString );
 
 NSString *encryptedString = [plainString AES256EncryptWithKey:key];
 //SLog( @"Encrypted String: %@", encryptedString );
 
 //SLog( @"Decrypted String: %@", [encryptedString AES256DecryptWithKey:key] );
 
 */
