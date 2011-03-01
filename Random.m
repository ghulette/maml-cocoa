//
//  Random.m
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Random.h"


@implementation Random

-(void)exec:(Agent *)agent
{
  float r = (random() & 0xFF) / (float)0xFF;
  NSNumber *n = [NSNumber numberWithFloat:r];
  [agent push:n];
  [agent pcStep];
}

@end
