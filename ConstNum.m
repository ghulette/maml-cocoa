//
//  ConstNum.m
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ConstNum.h"


@implementation ConstNum

-(id)initWithNumber:(NSNumber *)n
{
  self = [super init];
  if(self) {
    value = [n retain];
  }
  return self;
}

-(void)exec:(Agent *)agent
{
  [agent push:value];
  [agent step];
}

-(void)dealloc
{
  [value release];
  [super dealloc];
}

@end
