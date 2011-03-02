//
//  GetVar.h
//  Maml
//
//  Created by Geoff Hulette on 3/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Instruction.h"

@interface GetVar : NSObject < Instruction > {
  NSString *varId;
}

-(id)initWithVarId:(NSString *)vid;

@end
