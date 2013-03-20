//
//  CheckItViewController.m
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import "CheckItViewController.h"
#import "UnlockItViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface CheckItViewController ()

@end

@implementation CheckItViewController{
    SystemSoundID winSoundID;
}

- (void)playWinSound
{
    if (winSoundID == 0){
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"win" withExtension:@"mp3"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)(soundURL), &winSoundID);
    }
    AudioServicesPlaySystemSound(winSoundID);
    [self performSelector:@selector(terminateWithSuccess)
               withObject:nil
               afterDelay:1.5];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) viewDidAppear:(BOOL)animated
{
    NSString *displayString1, *displayString2;
    switch(num){
        case 0:
            displayString1 = @"The Ace of";
            break;
        case 1:
            displayString1 = @"The 2 of";
            break;
        case 2:
            displayString1 = @"The 3 of";
            break;
        case 3:
            displayString1 = @"The 4 of";
            break;
        case 4:
            displayString1 = @"The 5 of";
            break;
        case 5:
            displayString1 = @"The 6 of";
            break;
        case 6:
            displayString1 = @"The 7 of";
            break;
        case 7:
            displayString1 = @"The 8 of";
            break;
        case 8:
            displayString1 = @"The 9 of";
            break;
        case 9:
            displayString1 = @"The 10 of";
            break;
        case 10:
            displayString1 = @"The Jack of";
            break;
        case 11:
            displayString1 = @"The Queen of";
            break;
        case 12:
            displayString1 = @"The King of";
            break;
    }
    _userGuessNum.text = displayString1;
    
    switch(suit){
        case 0:
            displayString2 = @"Hearts";
            break;
        case 1:
            displayString2 = @"Spades";
            break;
        case 2:
            displayString2 = @"Diamonds";
            break;
        case 3:
            displayString2 = @"Clubs";
            break;
    }
    _userGuessSuit.text = displayString2;
    
    if (num == randNum ^ suit == randSuit){
        _correctIncorrect.text = @"CLOSE..";
    }
    else if (num == randNum && suit == randSuit){
        _correctIncorrect.text = @"YOU ARE CORRECT";
        [self playWinSound];
    }
    else
        _correctIncorrect.text = @"DEAD WRONG";
    if(numGuesses == 1){
        _guesses.text = [NSString stringWithFormat:@"You guessed %d time", numGuesses];
    }
    else if(numGuesses < 10){
        _guesses.text = [NSString stringWithFormat:@"You guessed %d times", numGuesses];
    }
    else{
       _guesses.text = [NSString stringWithFormat:@"You guessed a whopping %d times", numGuesses]; 
    }
    
}

@end
