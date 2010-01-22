//
//  Patch.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Patch.h"


@implementation Patch
@synthesize x, y;
@synthesize color;

-(id)initWithCoordsX:(int)ax Y:(int)ay
{
  self = [super init];
  if(self) {
    x = ax;
    y = ay;
    float r = 0.0f;
    float g = 0.0f;
    float b = (float)x / 20.0f;
    self.color = [NSColor colorWithCalibratedRed:r green:g blue:b alpha:1.0];
  }
  return self;
}

@end
