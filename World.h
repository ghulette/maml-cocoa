//
//  World.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Patch.h"


@interface World : NSObject {
  int width, height;
  NSArray *patches;
}
@property (retain) NSArray *patches;
@property (readonly) int width, height;

-(id)initWithWidth:(int)aWidth Height:(int)aHeight;
-(Patch *)patchAtX:(int)x Y:(int)y;

@end
