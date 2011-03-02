//
//  Agent.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Agent.h"
#import "Instruction.h"

@implementation Agent
@synthesize program;
@synthesize done;
@synthesize ready;

-(id)init
{
  self = [super init];
  if(self != nil) {
    stack = [[NSMutableArray alloc] init];
    pc = 0;
    env = [[NSMutableDictionary alloc] init];
    done = NO;
  }
  return self;
}

-(void)step
{
  ready = YES;
  while (!done && ready) {
    id <Instruction> instr = [program instructionAt:pc];
    [instr exec:self];
  }
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

-(void)pcStep
{
  pc++;
}

-(void)pcJump:(NSInteger)x
{
  pc = x;
}

-(void)setVar:(NSString *)var Value:(id)val
{
  [env setObject:val forKey:var];
}

-(id)getVar:(NSString *)var
{
  return [env valueForKey:var];
}

-(void)dealloc
{
  [stack release];
  [env release];
  [super dealloc];
}

@end
