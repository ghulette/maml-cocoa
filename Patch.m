//
//  Patch.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Patch.h"


@implementation Patch
@synthesize color;

-(id)init
{
  self = [super init];
  if(self) {
    float r = (float)(random() & 0xFF) / (float)(0xFF);
    float g = (float)(random() & 0xFF) / (float)(0xFF);
    float b = (float)(random() & 0xFF) / (float)(0xFF);
    self.color = [NSColor colorWithCalibratedRed:r green:g blue:b alpha:1.0];
  }
  return self;
}

@end
