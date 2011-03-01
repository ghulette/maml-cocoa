//
//  Binop.m
//  Maml
//
//  Created by Geoff Hulette on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Binop.h"

double realOp(Operator op, double v1, double v2) {
  switch(op) {
    Add:  return v1 + v2;
    Sub:  return v1 - v2;
    Mult: return v1 * v2;
    Div:  return v1 / v2;
  }
  return 0.0;
}

@implementation Binop

-(id)initWithOperator:(Operator)aOp
{
  self = [super init];
  if(self) {
    op = aOp;
  }
  return self;
}

-(void)exec:(Agent *)agent
{
  NSNumber *n2 = (NSNumber *)[agent pop];
  NSNumber *n1 = (NSNumber *)[agent pop];
  double v1 = [n1 doubleValue];
  double v2 = [n2 doubleValue];
  double v3 = realOp(op, v1, v2);
  NSNumber *n3 = [NSNumber numberWithDouble:v3];
  [agent push:n3];
  [agent step];
}

@end
