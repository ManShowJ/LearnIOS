//
//  XYZToDoItem.h
//  LearnIOSDoList
//
//  Created by JiangBo on 14-10-31.
//  Copyright (c) 2014年 JiangBo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *ItemName;
@property BOOL completed;
@property (readonly)NSDate *creationTime;

@end
