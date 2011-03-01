//
//  MamlProgram.m
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MamlProgram.h"


@implementation MamlProgram

-(id)initWithArray:(NSArray *)instrs
{
  self = [super init];
  if(self) {
    instructions = [NSArray arrayWithArray:instrs];
  }
  return self;
}


@end
