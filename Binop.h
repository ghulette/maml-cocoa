//
//  Binop.h
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Instruction.h"

typedef enum { Add,Sub,Mult,Div,Eq,Lt,Gt,And,Or } Operator;

@interface Binop : NSObject < Instruction > {
  Operator op;
}

-(id)initWithOperator:(Operator)aOp;

@end
