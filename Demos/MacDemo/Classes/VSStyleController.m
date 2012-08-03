//
//  VSStyleController.m
//  VSStyleMacTest
//
//  Created by Steve Streza on 7/23/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "VSStyleController.h"

//#import "VSStyles.h"
//#import "VSShapes.h"

#import "LightStyleSheet.h"
#import "DarkStyleSheet.h"
#import "iDarkStyleSheet.h"
#import "iLightStyleSheet.h"

@implementation VSStyleController
@synthesize backgroundView, ibackgroundView;

-(id)init{
    if(self = [super init]){
        //STUB initialize your object here
		styleSheets = [[NSArray arrayWithObjects:
						[LightStyleSheet styleSheet],
						[DarkStyleSheet styleSheet],
						[iLightStyleSheet styleSheet],
						[iDarkStyleSheet styleSheet],
					   nil] retain];
		
		[self selectStyleSheetAtIndex:0];

	}
	return self;
}

-(void)selectStyleSheetAtIndex:(NSUInteger)index{
	[VSStyleSheet setGlobalStyleSheet:[styleSheets objectAtIndex:index]];	
}

-(IBAction)changeStyleSheet:sender{
	NSUInteger index = [(NSPopUpButton *)sender selectedTag];
	NSLog(@"Selecting stylesheet %ld",index);

	if (index > 1 ) {
		[backgroundView performSelectorOnMainThread:@selector(fadeOut) withObject:nil waitUntilDone:YES];
		[self selectStyleSheetAtIndex:index];
		[ibackgroundView fadeIn];
	} else {
		[ibackgroundView performSelectorOnMainThread:@selector(fadeOut) withObject:nil waitUntilDone:YES];
		[self selectStyleSheetAtIndex:index];
		[backgroundView fadeIn];
	}
}

-(void)awakeFromNib{

	NSRect erect = NSInsetRect([container bounds],25,25);
	ibackgroundView.frame = erect;
	[ibackgroundView setHidden:YES];
	[container addSubview:ibackgroundView];

	styleView4.text = @"Hello world!";
	
	backgroundView.styleName = @"backgroundStyle";
	styleView1.styleName = @"upperLeftStyle";
	styleView2.styleName = @"upperRightStyle";
	styleView3.styleName = @"lowerLeftStyle";
	styleView4.styleName = @"lowerRightStyle";

	ibackgroundView.styleName = @"ibackgroundStyle";
	ztoggleLabel.styleName = @"ztoggleLabelStyle";
	ztoggleLabel.text = @"Toggle Stylesheet";

	rectStyle.styleName = @"rectStyle";
	roundRectStyle.styleName = @"roundRectStyle";
	gradBorderStyle.styleName = @"gradBorderStyle";
	roundLeftArrowStyle.styleName = @"roundLeftArrowStyle";
	partRoundRectStyle.styleName = @"partRoundRectStyle";
	speechRectStyle.styleName = @"speechRectStyle";
	speechRectAltStyle.styleName = @"speechRectAltStyle";
	dropShadowStyle.styleName = @"dropShadowStyle";
	innShadowStyle.styleName = @"innShadowStyle";
	chiselStyle.styleName = @"chiselStyle";
	embossStyle.styleName = @"embossStyle";
	toolbarButtonStyle.styleName = @"toolbarButtonStyle";
	zbackButtonStyle.styleName = @"zbackButtonStyle";
	zbackButtonStyle.text = @"Navigation";
	badgeStyle.styleName = @"badgeStyle";
	maskedImageStyle.styleName = @"maskedImageStyle";

}

-(void)dealloc{
	//STUB release your objects here
	[styleSheets autorelease];
	
	[super dealloc];
}

@end
