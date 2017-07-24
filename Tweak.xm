// Feel free to use this code in anything you want, a little credit would be nice though :)
// If you found this helpful, donations are very much appreciated too! Link to my PayPal in README.md

// Sometimes the compiler gets confused, so you need to tell it what a MPUEmptyNowPlayingView is
@interface MPUEmptyNowPlayingView : UIView // It's a UIView :O

@property (nonatomic, copy, readwrite) UIColor *backgroundColor; // All UIViews have a backgroundColor property

@end

%hook MPUEmptyNowPlayingView // Hooking lets you do stuff with Apple's existing methods

- (void)setBackgroundColor:(UIColor *)arg1 { // This method sets the background color of the MPUEmptyNowPlayingView
	%orig([UIColor clearColor]); // Call the original method, but instead of sending arg1, send a clear color.
}

%end
