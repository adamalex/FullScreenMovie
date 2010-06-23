//
//  FullScreenMovieViewController.m
//  FullScreenMovie
//
//  Created by Adam on 6/21/10.
//

#import <MediaPlayer/MediaPlayer.h>
#import "FullScreenMovieViewController.h"

@implementation FullScreenMovieViewController

- (IBAction)playMovie {
	NSURL *movieUrl = [NSURL URLWithString:@"http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"];
	MPMoviePlayerViewController *player = [[MPMoviePlayerViewController alloc] initWithContentURL:movieUrl];
	[self presentMoviePlayerViewControllerAnimated:player];
	[player release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
	[super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
	[self performSelector:@selector(fixStatusBar) withObject:nil afterDelay:0];
}

- (void)fixStatusBar {
	[[UIApplication sharedApplication] setStatusBarOrientation:[self interfaceOrientation] animated:NO];
}

@end
