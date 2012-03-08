//
//  AboutWindowController.h
//  ScrollingAboutWindow
//
//  Created by Tomaž Kragelj on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AboutWindowController : NSWindowController

- (IBAction)getInTouch:(id)sender;

@property (weak) IBOutlet NSTextField *applicationNameLabel;
@property (weak) IBOutlet NSTextField *applicationVersionLabel;
@property (weak) IBOutlet NSTextField *punchLineLabel;
@property (weak) IBOutlet NSTextField *copyrightLabel;
@property (weak) IBOutlet NSView *creditsView;

@end
