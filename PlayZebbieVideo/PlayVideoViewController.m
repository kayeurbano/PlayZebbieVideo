//
//  PlayVideoViewController.m
//  PlayZebbieVideo
//
//  Created by Student Worker Catherine Urbano on 11/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlayVideoViewController.h"

@interface PlayVideoViewController ()

@end

@implementation PlayVideoViewController

@synthesize movie;

-(void)viewDidLoad{
    
}

-(IBAction)PlayVideo{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"LB60dance" ofType:@"mov"]];
    
    movie = [[MPMoviePlayerController alloc] initWithContentURL: url];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:movie];
    
    movie.controlStyle = MPMovieControlStyleDefault;
    movie.shouldAutoplay = YES;
    [self.view addSubview:movie.view];
    [movie setFullscreen:YES animated:YES];    
}

-(void) moviePlayBackDidFinish:(NSNotification *)notification{
    movie = [notification object];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:MPMoviePlayerPlaybackDidFinishNotification object:movie];
    if([movie respondsToSelector:@selector(setFullscreen:animated:)]){
        [movie.view removeFromSuperview];
    }
}
    
@end
