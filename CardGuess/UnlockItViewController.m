//
//  UnlockItViewController.m
//  CardGuess
//
//  Created by Boris Kachscovsky on 3/15/13.
//  Copyright (c) 2013 nyu.edu. All rights reserved.
//

#import "UnlockItViewController.h"

@interface UnlockItViewController ()

@end

@implementation UnlockItViewController

int num = 0;
int suit = 0;
int randNum = 0;
int randSuit = 0;
int numGuesses = 0;


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
    randNum = (arc4random()%13);
    randSuit = (arc4random()%4);
    
    self.cards = @[@"Ace of", @"2 of",@"3 of",@"4 of",@"5 of",@"6 of",@"7 of",@"8 of",@"9 of",@"10 of",@"Jack of",@"Queen of",@"King of"];
    self.images = @[[UIImage imageNamed:@"hearts"], [UIImage imageNamed:@"spades"], [UIImage imageNamed:@"diamonds"], [UIImage imageNamed:@"clubs"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component == 0){
        return [self.cards count];
    }
    else{
        return [self.images count];
    }
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    if (component != 0){
        UIImage *image = self.images[row];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        return imageView;
    }
    else{
        UILabel *mylabel = [[UILabel alloc] init];
        mylabel.text = self.cards[row];
        mylabel.textAlignment = UITextAlignmentCenter;
        return mylabel;
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    numGuesses++;
    if(component == 0) {
        switch(row){
            case 0:
                num = 0;
                break;
            case 1:
                num = 1;
                break;
            case 2:
                num = 2;
                break;
            case 3:
                num = 3;
                break;
            case 4:
                num = 4;
                break;
            case 5:
                num = 5;
                break;
            case 6:
                num = 6;
                break;
            case 7:
                num = 7;
                break;
            case 8:
                num = 8;
                break;
            case 9:
                num = 9;
                break;
            case 10:
                num = 10;
                break;
            case 11:
                num = 11;
                break;
            case 12:
                num = 12;
                break;
            case 13:
                num = 13;
        }
    }
    else{
        suit = row;
    }
}

@end
