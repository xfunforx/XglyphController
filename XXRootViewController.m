#import "XXRootViewController.h"
#import <notify.h>
@implementation XXRootViewController {
}

- (void)loadView {
	[super loadView];
	CGSize screen = [[UIScreen mainScreen]bounds].size;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.xglyphshow = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.xglyphshow setTitle:@"start" forState:UIControlStateNormal];
    [self.xglyphshow.layer setCornerRadius:5];
    [self.xglyphhide setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.xglyphshow.layer setBorderWidth:1];
    [self.xglyphshow setFrame:CGRectMake(screen.width/2-20, screen.height/2-50, 60, 40)];
    self.xglyphhide = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.xglyphhide setTitle:@"close" forState:UIControlStateNormal];
    [self.xglyphhide setFrame:CGRectMake(screen.width/2-20, screen.height/2+50, 60, 40)];
    [self.xglyphhide.layer setCornerRadius:5];
    [self.xglyphhide setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.xglyphhide.layer setBorderWidth:1];
    [self.xglyphshow addTarget:self
     action:@selector(showxglyph) forControlEvents:UIControlEventTouchUpInside];
     [self.xglyphhide addTarget:self
     action:@selector(hidexglyph) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.xglyphshow];
    [self.view addSubview:self.xglyphhide];
}

-(void)showxglyph{
	notify_post("ingress-Xglyph-show");
}
-(void)hidexglyph{
	notify_post("ingress-Xglyph-hide");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
