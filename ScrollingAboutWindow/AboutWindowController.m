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

@end

#pragma mark -

@implementation AboutWindowController

#pragma mark - Initialization & disposal

- (id)init {
    self = [super initWithWindowNibName:@"AboutWindow"];
    return self;
}

#pragma mark - Window lifecycle

- (void)awakeFromNib {
}

@end
