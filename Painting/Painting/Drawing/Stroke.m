//
//  Stroke.m
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke
@synthesize color = _color, size = _size;
@dynamic location;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    Stroke * strokeCopy = [[[self class] allocWithZone:zone] init];
    [strokeCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [strokeCopy setSize:_size];
    for (id<Mark> child in _children) {
        id <Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    return strokeCopy;
}

#pragma mark - getters & setters

- (void)setLocation:(CGPoint)location {}

- (CGPoint)location
{
    if ([_children count] > 0) {
        id<Mark> firstChild = _children.firstObject;
        return [firstChild location];
    }
    
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark
{
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark
{
    //如果mark在这一层，将其移除
    //否则，让每个字节点去找
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else{
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)lastChild
{
    return [_children lastObject];
}

- (id<Mark>)childMarkAtIndex:(NSInteger) index
{
    if (index >= [_children count]) return nil;
    return _children[index];
}

- (NSUInteger)count
{
    return [_children count];
}


@end
