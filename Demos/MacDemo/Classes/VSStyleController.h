//
//  VSStyleController.h
//  VSStyleMacTest
//
//  Created by Steve Streza on 7/23/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <VStyle/VStyle.h>
#import "VSStyleView.h"
#import "VSStyleLabel.h"
#import <AtoZ/AtoZ.h>

@interface VSStyleController : NSWindowController {

	IBOutlet VSStyleView *styleView1;
	IBOutlet VSStyleView *styleView2;
	IBOutlet VSStyleView *styleView3;
	IBOutlet VSStyleLabel *styleView4;
	
	NSArray *styleSheets;


	IBOutlet VSStyleView *rectStyle;
	IBOutlet VSStyleView *roundRectStyle;
	IBOutlet VSStyleView *gradBorderStyle;
	IBOutlet VSStyleView *roundLeftArrowStyle;
	IBOutlet VSStyleView *partRoundRectStyle;
	IBOutlet VSStyleView *speechRectStyle;
	IBOutlet VSStyleView *speechRectAltStyle;
	IBOutlet VSStyleView *dropShadowStyle;
	IBOutlet VSStyleView *innShadowStyle;
	IBOutlet VSStyleView *chiselStyle;
	IBOutlet VSStyleView *embossStyle;
	IBOutlet VSStyleView *toolbarButtonStyle;

	IBOutlet VSStyleView *badgeStyle;
	IBOutlet VSStyleLabel *zbackButtonStyle;
	IBOutlet VSStyleLabel *ztoggleLabel;

	IBOutlet NSView *container;

}
@property (nonatomic, retain) IBOutlet VSStyleView *backgroundView;
@property (nonatomic, retain) IBOutlet VSStyleView *ibackgroundView;

-(void)selectStyleSheetAtIndex:(NSUInteger)index;
-(IBAction)changeStyleSheet:sender;
@end
