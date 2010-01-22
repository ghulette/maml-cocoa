//
//  Patch.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Agent.h"

@interface Patch : Agent {
  int x, y;
  NSColor *color;
}
@property (readonly) int x, y;
@property (retain) NSColor *color;

-(id)initWithCoordsX:(int)ax Y:(int)ay;

@end
