//
//  Binop.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "Agent.h"

typedef enum { Add,Sub,Mult,Div,Eq,Lt,Gt,And,Or } Operator;

@interface Binop : NSObject {
  Operator op;
}

-(id)initWithOperator:(Operator)aOp;
-(void)exec:(Agent *)agent;

@end
