//
//  ConstNum.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Agent.h"

@interface ConstNum : NSObject {
  NSNumber *value;
}

-(id)initWithNumber:(NSNumber *)n;
-(void)exec:(Agent *)agent;

@end
