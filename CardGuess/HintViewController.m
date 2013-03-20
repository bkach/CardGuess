//
//  HintViewController.m
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import "HintViewController.h"
#import "UnlockItViewController.h"

@interface HintViewController ()

@end

@implementation HintViewController

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

- (IBAction)down:(id)sender {
    _label.text = @"CHEATERS NEVER PROSPER";
}

- (IBAction)hintPressed:(id)sender {
    
    NSString *displayString1, *displayString2;
    
    switch(randNum){
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
    
    switch(randSuit){
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
    
    _label.text = [NSString stringWithFormat:@"%@ %@", displayString1,displayString2];
}

- (IBAction)hint:(id)sender {
}
@end
