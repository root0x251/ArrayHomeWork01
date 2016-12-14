//
//  Human.h
//  ArrayHomeWork01
//
//  Created by Slava on 14.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface Human : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (strong,nonatomic) NSString *sex;

- (void)motion;



@end
