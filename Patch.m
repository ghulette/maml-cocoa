//
//  Patch.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Patch.h"


@implementation Patch

-(id)initWithCoordsX:(NSInteger)ax Y:(NSInteger)ay
{
  self = [super init];
  if(self != nil) {
    [self setVar:@"x" Value:[NSNumber numberWithInt:ax]];
    [self setVar:@"y" Value:[NSNumber numberWithInt:ay]];
    CGFloat r = 0.0f;
    CGFloat g = 0.0f;
    CGFloat b = ((random() & 0xFF) / (CGFloat)0xFF);
    NSColor *c = [NSColor colorWithCalibratedRed:r green:g blue:b alpha:1.0];
    [self setVar:@"color" Value:c];
  }
  return self;
}

-(NSColor *)color
{
  return [self getVar:@"color"];
}

@end
