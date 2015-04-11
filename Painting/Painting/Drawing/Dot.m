//
//  Dot.m
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size = _size, color = _color;

- (id)copyWithZone:(NSZone *)zone
{
    Dot* dotCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    //注意此处UIColor的复制方法，已经尝试使用 [_color copy],不OK
    [dotCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [dotCopy setSize:_size];
    return dotCopy;
}

@end
