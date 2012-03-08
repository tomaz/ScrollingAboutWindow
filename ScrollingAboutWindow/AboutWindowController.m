//
//  AboutWindowController.m
//  ScrollingAboutWindow
//
//  Created by Tomaž Kragelj on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "AboutWindowController.h"

@interface AboutWindowController ()
@property (nonatomic, readonly) NSString *applicationNameString;
@property (nonatomic, readonly) NSString *applicationVersionString;
@property (nonatomic, readonly) NSString *applicationBuildNumberString;
@property (nonatomic, readonly) NSString *applicationCopyrightString;
@end

#pragma mark -

@implementation AboutWindowController

@synthesize applicationNameLabel;
@synthesize applicationVersionLabel;
@synthesize punchLineLabel;
@synthesize copyrightLabel;
@synthesize creditsView;

#pragma mark - Initialization & disposal

- (id)init {
    self = [super initWithWindowNibName:@"AboutWindow"];
    return self;
}

#pragma mark - Window lifecycle

- (void)awakeFromNib {
	NSString *versionFormat = NSLocalizedString(@"Version %@ (%@)", nil);
	NSString *versionString = [NSString stringWithFormat:versionFormat, self.applicationVersionString, self.applicationBuildNumberString];
	self.applicationNameLabel.stringValue = self.applicationNameString;
	self.punchLineLabel.stringValue = NSLocalizedString(@"Scrolling about window demonstrator!", nil);
	[self.applicationVersionLabel.cell setPlaceholderString:versionString];
	[self.copyrightLabel.cell setPlaceholderString:self.applicationCopyrightString];
}

#pragma mark - User actions

- (IBAction)getInTouch:(id)sender {
	NSURL *url = [NSURL URLWithString:@"http://gentlebytes.com"];
	[[NSWorkspace sharedWorkspace] openURL:url];
}

#pragma mark - Properties

- (NSString *)applicationNameString {
	return [[[NSBundle mainBundle] infoDictionary] valueForKey:(NSString *)kCFBundleNameKey];
}

- (NSString *)applicationVersionString {
	return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

- (NSString *)applicationBuildNumberString {
	return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

- (NSString *)applicationCopyrightString {
	return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"NSHumanReadableCopyright"];
}

@end
