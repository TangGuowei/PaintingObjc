//
//  Dot.h
//  Painting
//
//  Created by Tom on 15/4/11.
//  Copyright (c) 2015年 Tom. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor * _color;
    CGFloat _size;
}

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGFloat size;

@end
