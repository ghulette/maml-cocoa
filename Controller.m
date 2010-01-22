//
//  AppController.m
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Controller.h"


@implementation Controller
@synthesize window;

-(void)awakeFromNib
{
  NSSize aspectRatio = {1, 1};
  NSSize defaultSize = {300, 300};
  NSSize minSize = {200, 200};
  [window setContentAspectRatio:aspectRatio];
  [window setContentSize:defaultSize];
  [window setContentMinSize:minSize];
  [window center];
}

@end
