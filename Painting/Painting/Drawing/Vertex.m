//
//  Vertex.m
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = _location;

- (id) initWithLocation:(CGPoint) alocation
{
    self = [super init];
    if (self) {
        [self setLocation:alocation];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    Vertex* vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertexCopy;
}

#pragma mark - Getters And Setters

- (void)setColor:(UIColor *)color{}

- (UIColor *)color{return nil;}

- (void)setSize:(CGFloat)size{}

- (CGFloat)size{return 0.0f;}

#pragma mark - Mark
- (void)addMark:(id<Mark>)mark
{
    
}

- (void)removeMark:(id<Mark>)mark
{
    
}

- (id<Mark>)childMarkAtIndex:(NSInteger) index
{
    return nil;
}

@end
