//
//  FullScreenMovieAppDelegate.h
//  FullScreenMovie
//
//  Created by Adam on 6/21/10.
//

#import <UIKit/UIKit.h>

@class FullScreenMovieViewController;

@interface FullScreenMovieAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FullScreenMovieViewController *viewController;
}
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FullScreenMovieViewController *viewController;

@end

