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
}

-(id)initWithCoordsX:(NSInteger)ax Y:(NSInteger)ay;
-(NSColor *)color;

@end
