//
//  MamlProgram.m
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MamlProgram.h"


@implementation MamlProgram

-(id)initWithInstructions:(NSArray *)ins Labels:(NSDictionary *)labs
{
  self = [super init];
  if (self) {
    instructions = [NSArray arrayWithArray:ins];
    labels = [NSDictionary dictionaryWithDictionary:labs];
  }
  return self;
}

-(NSInteger)indexForlabel:(NSString *)lid
{
  NSNumber *n = (NSNumber *)[labels objectForKey:lid];
  return [n integerValue];
}

-(void)dealloc
{
  [instructions release];
  [labels release];
  [super dealloc];
}

@end
