//
//  ZFPlayerViewController.m
//  ZFPlayer_Example
//
//  Created by LAP01000 on 6/12/19.
//  Copyright © 2019 紫枫. All rights reserved.
//

#import "ZFPlayerViewController.h"
#import <ZFPlayer/ZFPlayer.h>
#import <ZFPlayer/ZFAVPlayerManager.h>
#import <ZFPlayer/ZFPlayerControlView.h>

@interface ZFPlayerViewController ()
    @property (nonatomic, strong) ZFPlayerController *player;
    @property (nonatomic, strong) ZFPlayerControlView *controlView;
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    
@end

@implementation ZFPlayerViewController

- (ZFPlayerControlView *)controlView {
    if (!_controlView) {
        _controlView = [ZFPlayerControlView new];
    }
    return _controlView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /// playerManager
    ZFAVPlayerManager *playerManager = [[ZFAVPlayerManager alloc] init];
    //    KSMediaPlayerManager *playerManager = [[KSMediaPlayerManager alloc] init];
    //    ZFIJKPlayerManager *playerManager = [[ZFIJKPlayerManager alloc] init];
    
    /// player的tag值必须在cell里设置
    self.player = [[ZFPlayerController alloc] initWithPlayerManager:playerManager containerView:self.imageView];
    self.player.controlView = self.controlView;
    
    NSString *URLString = [@"http://flv3.bn.netease.com/tvmrepo/2018/6/H/9/EDJTRBEH9/SD/EDJTRBEH9-mobile.mp4" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    playerManager.assetURL = [NSURL URLWithString:URLString];
    self.player.shouldAutoPlay = YES;

   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
