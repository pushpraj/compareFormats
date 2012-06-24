//
//  DCFDictionaryList.h
//  compareFormat
//
//  Created by pushpraj agrawal on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCFTestObject : NSObject

@property (nonatomic, retain) NSString *info;
@property (nonatomic, retain) NSDictionary *object;

@end

@interface DCFDictionaryList : NSObject

+ (NSArray *)dictionaryList;

@end
