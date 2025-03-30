#import <UIKit/UIKit.h>

@interface HLHomeShortcutBannerView : UIView
@end

@interface JYADContainerBannerView : UIView
@end

@interface HLHomeShortcutMagicBannerView : UIView
@end

@interface JYMKHomeRedPacketView : UIView
@end

%hook HLHomepageMarkView
- (void)setStopFrame:(CGRect)arg1 {
}
%end

%hook HLHomepageMarkView
- (void)setStartFrame:(CGRect)arg1 {
}
%end

%hook JYADContainerBannerView
- (void)setAdUnitId:(id)arg1 {
}
%end

%hook HLHomeShortcutMagicBannerView
- (void)layoutSubviews {
    %orig;
    [self removeFromSuperview];
}
%end

%hook HLHomeShortcutBannerView
- (void)layoutSubviews {
    %orig;
    [self removeFromSuperview];
}
%end
