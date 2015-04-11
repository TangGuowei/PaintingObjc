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
    [dotCopy setColor:[_color copy]];
    [dotCopy setSize:_size];
    return dotCopy;
}

@end
