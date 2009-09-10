/*
 * AppController.j
 * NewApplication
 *
 * Created by You on July 5, 2009.
 * Copyright 2009, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
  CPTextField label;
}

- (void)swap:(id)sender
{
  if ([label stringValue] == "Hallo Leute!")
    [label setStringValue:"Goodbye!"];
  else
    [label setStringValue:"Hallo Leute!"];
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"Hallo Leute!"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [label setBordered:true];

    [contentView addSubview:label];

    var button = [[CPButton alloc] initWithFrame: CGRectMake(
                    CGRectGetWidth([contentView bounds])/2.0 - 40,
                    CGRectGetMaxY([label frame]) + 10,
                    80, 24 )];
                    
    [button setAutoresizingMask:CPViewMinXMargin |
                                CPViewMaxXMargin |
                                CPViewMinYMargin |
                                CPViewMaxYMargin];
                                
    [button setTitle:"swap"];
    
    [button setTarget:self];
    [button setAction:@selector(swap:)];
    
    [contentView addSubview:button]; 

    var slider = [[CPSlider alloc] initWithFrame: CGRectMake(
                    CGRectGetWidth([contentView bounds])/2.0 - 80,
                    CGRectGetMaxY([label frame]) + 50,
                    160, 24 )];

    [slider setMinValue:0]
    [slider setMaxValue:100]

    [contentView addSubview:slider];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

@end
