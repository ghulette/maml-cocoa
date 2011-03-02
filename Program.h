//
//  Program.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Program : NSObject {
  NSArray *instructions;
  NSDictionary *labels;
}

-(id)initWithInstructions:(NSArray *)ins;
-(id)initWithInstructions:(NSArray *)ins Labels:(NSDictionary *)labs;
-(id)instructionAt:(NSInteger)pc;
-(NSInteger)indexForlabel:(NSString *)lid;

@end
