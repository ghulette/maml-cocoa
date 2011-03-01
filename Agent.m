//
//  Agent.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Agent.h"


@implementation Agent
@synthesize program;

-(id)init 
{
  self = [super init];
  if(self != nil) {
    stack = [[NSMutableArray alloc] init];
    env = [[NSMutableDictionary alloc] init];
    NSMutableArray *prog = [[NSMutableArray alloc] init];
    [prog addObject:[NSNumber numberWithInt:5]];
    self.program = prog;
    [prog release];
  }
  return self;
}

-(void)push:(id)val
{
  [stack addObject:val];
}

-(id)pop
{
  id val = [stack lastObject];
  [stack removeLastObject];
  return val;
}

-(void)step
{
  pc++;
}

-(void)setVar:(NSString *)var Value:(id)val
{
  [env setObject:val forKey:var];
}

-(id)getVar:(NSString *)var
{
  return [env valueForKey:var];
}

@end
