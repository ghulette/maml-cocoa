//
//  AppController.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Controller.h"


@implementation Controller
@synthesize world;

-(void)awakeFromNib
{
  NSSize aspectRatio = {1, 1};
  NSSize defaultSize = {500, 500};
  NSSize minSize = {200, 200};
  [window setContentAspectRatio:aspectRatio];
  [window setContentSize:defaultSize];
  [window setContentMinSize:minSize];
  [window center];
  
  World *w = [[World alloc] initWithWidth:30 Height:30];
  self.world = w;
}

@end
