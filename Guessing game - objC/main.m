//
//  main.m
//  Guessing game - objC
//
//  Created by Daniel Kwolek on 8/15/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    /*
     Create a command line guessing game using NSNumber, NSString, and NSLog
     
     First try accepting one number.
     
     Then add more if you finish that.
     Show the user all of their previous guesses when they guess incorrectly.
     
     remember that you can box values using @()
     */
    
    NSNumber *answer = @(arc4random_uniform(10));
    NSMutableArray *guessArray = [NSMutableArray array];
    // [mutableArray addObject:@4];
    // [mutableArray removeObjectAtIndex:1];
    char UserName[100] = {'\0'};
    NSLog(@"\n\n\nWhat would you like to be called?");
    fpurge(stdin);
    scanf("%99s", UserName);
    NSString *userName = @(UserName);
    NSLog(@"\n\n\nWe're going to be playing a guessing game, %@\nWhat is your first one digit guess?", userName);
    NSNumber *numbercheck;
    unsigned long userGuess = 0;
    int numberOfItemsScanned = -1;
    do
    {
        numberOfItemsScanned = scanf("%1lu", &userGuess);
        fpurge(stdin);
        numbercheck = @(userGuess);
        if (numbercheck != answer)
        {
            NSLog(@"\n\n\nSorry, %@, your guess was incorrect\n", userName);
        }
        [guessArray addObject:numbercheck];
        NSLog(@"\nPrevious guesses: %@", guessArray);
    } while (numbercheck != answer);
    NSLog(@"\n\n\nCongratulations, %@, You've won the golden ticket!\n", userName);
    
    
    return 0;
}
