//
//  World.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "World.h"


@implementation World
@synthesize width, height;
@synthesize patches;

-(id)initWithWidth:(int)aWidth Height:(int)aHeight
{
  self = [super init];
  if(self) {
    width = aWidth;
    height = aHeight;
    NSMutableArray *patchList = [[NSMutableArray alloc] init];
    for(int y=0; y < height; y++) {
      for(int x=0; x < width; x++) {
        Patch *p = [[Patch alloc] init];
        [patchList addObject:p];
        [p release];
      }
    }
    self.patches = [NSArray arrayWithArray:patchList];
    [patchList release];
  }
  return self;
}

-(Patch *)patchAtX:(int)x Y:(int)y
{
  return [patches objectAtIndex:y*width+x];
}

@end
