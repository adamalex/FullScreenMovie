//
//  FullScreenMovieAppDelegate.m
//  FullScreenMovie
//
//  Created by Adam on 6/21/10.
//

#import "FullScreenMovieAppDelegate.h"
#import "FullScreenMovieViewController.h"

@implementation FullScreenMovieAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
        
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
