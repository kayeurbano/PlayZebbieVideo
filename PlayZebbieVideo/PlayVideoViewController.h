//
//  PlayVideoViewController.h
//  PlayZebbieVideo
//
//  Created by Student Worker Catherine Urbano on 11/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mediaplayer/Mediaplayer.h>

@interface PlayVideoViewController : UIViewController{
    
}

@property (strong, retain) MPMoviePlayerController *movie;

-(IBAction)PlayVideo;

@end
