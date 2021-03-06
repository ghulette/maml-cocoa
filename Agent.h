//
//  Agent.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Program.h"

@interface Agent : NSObject {
  NSMutableArray *stack;
  NSInteger pc;
  NSMutableDictionary *env;
  BOOL ready,done;
  Program *program;
}

@property (retain) Program *program;
@property BOOL done;
@property BOOL ready;

-(void)step;
-(void)push:(id)val;
-(id)pop;
-(void)pcStep;
-(void)pcJump:(NSInteger)x;
-(void)setVar:(NSString *)var Value:(id)val;
-(id)getVar:(NSString *)var;

@end
