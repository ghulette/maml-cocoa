//
//  World.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Patch.h"
#import "Program.h"


@interface World : NSObject {
  int width, height;
  NSArray *patches;
  Program *program;
}
@property (retain) NSArray *patches;
@property (readonly) int width, height;

-(id)initWithWidth:(int)w Height:(int)h;
-(Patch *)patchAtX:(int)x Y:(int)y;
-(void)loadProgram:(Program *)prg;
-(void)step;

@end
