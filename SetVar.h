//
//  SetVar.h
//  Maml
//
//  Created by Geoff Hulette on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "Agent.h"

@interface SetVar : NSObject {
  NSString *varId;
}

-(id)initWithVarId:(NSString *)vid;
-(void)exec:(Agent *)agent;

@end
