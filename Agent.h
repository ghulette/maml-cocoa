//
//  Agent.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

enum instrs {
  Done,
  Random,
  SetColor
};


@interface Agent : NSObject {
  NSArray *program;
  NSMutableArray *stack;
  NSMutableDictionary *env;
}
@property (retain) NSArray *program;

-(void)push:(id)val;
-(id)pop;
-(void)setVar:(NSString *)var Value:(id)val;
-(id)getVar:(NSString *)var;

@end
