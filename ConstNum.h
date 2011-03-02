//
//  ConstNum.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Instruction.h"

@interface ConstNum : NSObject < Instruction > {
  NSNumber *value;
}

-(id)initWithNumber:(NSNumber *)n;

@end
