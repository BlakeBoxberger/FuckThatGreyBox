@interface MPUEmptyNowPlayingView : UIView

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;

@end

%hook MPUEmptyNowPlayingView

- (void)setBackgroundColor:(UIColor *)arg1 {
	%orig([UIColor clearColor]);
}

%end
