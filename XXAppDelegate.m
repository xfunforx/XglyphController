#import "XXAppDelegate.h"
#import "XXRootViewController.h"

@implementation XXAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.rootViewController = [[XXRootViewController alloc]init];
	[self.window setRootViewController:self.rootViewController];
	[self.window makeKeyAndVisible];
}

- (void)dealloc {
	[self.window release];
	[self.rootViewController release];
	[super dealloc];
}

@end
