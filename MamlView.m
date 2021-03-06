//
//  MamlView.m
//
//  Created by Geoff Hulette on 8/24/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MamlView.h"

@implementation MamlView

-(id)initWithFrame:(NSRect)frame
{
  self = [super initWithFrame:frame];
  return self;
}

-(void)drawRect:(NSRect)rect
{
  float gridWidth = (float)controller.world.width;
  float gridHeight = (float)controller.world.height;
  NSRect bounds = [self bounds];
  float cellWidth = bounds.size.width / gridWidth;
  float cellHeight = bounds.size.height / gridHeight;
  NSRect cellRect;
  cellRect.size.width = cellWidth;
  cellRect.size.height = cellHeight;
  
  for(float row = 0.0; row < gridHeight; row += 1.0) {
    for(float col = 0.0; col < gridWidth; col += 1.0) {
      Patch *p = [controller.world patchAtX:col Y:row];
      [p.color setFill];
      cellRect.origin.x = col * cellWidth;
      cellRect.origin.y = row * cellHeight;
      [NSBezierPath fillRect:cellRect];
    }
  }
}

-(void)mouseDown:(NSEvent *)event
{
  NSPoint pt = [self convertPoint:[event locationInWindow] fromView:nil];
  NSLog(@"Click: %0.2f,%0.2f", pt.x, pt.y);
//  NSRect rect = [self frame];
//  int x = (pt.x / rect.size.width) * [dish size];
//  int y = (pt.y / rect.size.height) * [dish size];
//  NSLog(@"Click: %d,%d", x, y);
//  [controller flipCellAtX:x Y:y];
}

@end
