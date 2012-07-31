//
//  VSStyleLabel.m
//  VSStyleMac
//
//  Created by Steve Streza on 7/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "VSStyleLabel.h"


@implementation VSStyleLabel

@synthesize text;

- (NSString*)textForLayerWithStyle:(VSStyle*)style{
	return self.text;
}

-(void)dealloc{
    //STUB release your objects here
	[text release];
    
    [super dealloc];
}

@end
