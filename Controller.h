//
//  AppController.h
//  Maml
//
//  Created by Geoff Hulette on 1/21/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "World.h"

@interface Controller : NSObject {
  IBOutlet NSWindow *window;
  World *world;
}
@property (retain) World *world;

- (IBAction)step:(id)sender;

@end
