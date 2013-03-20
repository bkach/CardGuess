//
//  HintViewController.h
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HintViewController : UIViewController
- (IBAction)down:(id)sender;
- (IBAction)hintPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;


@end
