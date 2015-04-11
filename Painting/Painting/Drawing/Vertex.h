//
//  Vertex.h
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mark.h"

@interface Vertex : NSObject<Mark,NSCopying>
{
    @protected
    CGPoint _location;
}

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark>lastChild;

- (id) initWithLocation:(CGPoint) alocation;

@end
