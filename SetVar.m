//
//  SetVar.m
//  Maml
//
//  Created by Geoff Hulette on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SetVar.h"


@implementation SetVar

-(id)initWithVarId:(NSString *)vid
{
  self = [super init];
  if (self) {
    varId = [vid retain];
  }
  return self;
}

-(void)exec:(Agent *)agent
{
  id value = [agent pop];
  [agent setVar:varId Value:value];
  [agent pcStep];
}

-(void)dealloc
{
  [varId release];
  [super dealloc];
}

@end
