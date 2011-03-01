//
//  Agent.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "MamlProgram.h"

@interface Agent : NSObject {
  NSMutableArray *stack;
  NSInteger pc;
  NSMutableDictionary *env;
  MamlProgram *program;
}

@property (retain) MamlProgram *program;

-(void)push:(id)val;
-(id)pop;
-(void)pcStep;
-(void)pcJump:(NSInteger)x;
-(void)setVar:(NSString *)var Value:(id)val;
-(id)getVar:(NSString *)var;

@end
