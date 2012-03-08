//
//  AppDelegate.m
//  ScrollingAboutWindow
//
//  Created by Tomaž Kragelj on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutWindowController.h"
#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong) AboutWindowController *aboutWindowController;
@end

#pragma mark -

@implementation AppDelegate

@synthesize aboutWindowController = _aboutWindowController;
@synthesize window = _window;

#pragma mark - User actions

- (IBAction)showAboutWindow:(id)sender {
	[self.aboutWindowController showWindow:self];
}

#pragma mark - Properties

- (AboutWindowController *)aboutWindowController {
	if (_aboutWindowController) return _aboutWindowController;
	_aboutWindowController = [[AboutWindowController alloc] init];
	return _aboutWindowController;
}

@end
