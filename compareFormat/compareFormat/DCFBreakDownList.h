//
//  DCFBreakDownList.h
//  compareFormat
//
//  Created by pushpraj agrawal on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCFBreakDownObject : NSObject

@property (nonatomic, retain) NSDictionary *bigDict;
@property (nonatomic, retain) NSArray *brokenDict;
@property (nonatomic, copy) NSString *info;

@end

@interface DCFBreakDownList : NSObject

+ (NSArray *)allBreakDownObjects;

@end
