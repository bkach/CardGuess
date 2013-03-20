//
//  UnlockItViewController.h
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

extern int num;
extern int suit;
extern int randNum;
extern int randSuit;
extern int numGuesses;

@interface UnlockItViewController : UIViewController
    <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *images;
@property (strong, nonatomic) NSArray *cards;

@end
