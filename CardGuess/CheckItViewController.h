//
//  CheckItViewController.h
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckItViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *userGuessNum;
@property (weak, nonatomic) IBOutlet UILabel *userGuessSuit;
@property (weak, nonatomic) IBOutlet UILabel *correctIncorrect;
@property (weak, nonatomic) IBOutlet UILabel *guesses;

-(void) terminateWithSuccess;

@end
