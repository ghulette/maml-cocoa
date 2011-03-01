//
//  MamlProgram.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MamlProgram : NSObject {
  NSArray *instructions;
}

-(id)initWithArray:(NSArray *)instrs;

@end
