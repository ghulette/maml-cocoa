//
//  MamlView.m
//  Cocoa Game of Life
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
  int gridWidth = 20;
  int gridHeight = 20;
  NSRect bounds = [self bounds];
  float cellWidth = bounds.size.width / gridWidth;
  float cellHeight = bounds.size.height / gridHeight;
  NSRect cellRect;
  cellRect.size.width = cellWidth;
  cellRect.size.height = cellHeight;
  
  for(int row=0; row < gridHeight; row ++) {
    for(int col=0; col < gridWidth; col ++) {
      cellRect.origin.x = col * cellWidth;
      cellRect.origin.y = row * cellHeight;
      float r = (float)(random() & 0xFF) / (float)(0xFF);
      float g = (float)(random() & 0xFF) / (float)(0xFF);
      float b = (float)(random() & 0xFF) / (float)(0xFF);
      [[NSColor colorWithCalibratedRed:r green:g blue:b alpha:1.0] setFill];
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
