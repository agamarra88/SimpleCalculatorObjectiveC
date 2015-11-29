//
//  ViewController.m
//  SimpleCalculatorObjectivec
//
//  Created by Arturo Gamarra on 11/28/15.
//  Copyright © 2015 DevCode.la. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) BOOL isUserTiping;

@end

@implementation ViewController

- (IBAction)numberButtonTouched:(UIButton *)sender {
    NSString *digit = sender.currentTitle;
    if (self.isUserTiping) {
        self.displayLabel.text = [NSString stringWithFormat:@"%@%@", self.displayLabel.text, digit];
    } else {
        self.displayLabel.text = digit;
        self.isUserTiping = YES;
    }
}

- (IBAction)deleteButtonTouched:(id)sender {
    NSString *currentText = self.displayLabel.text;
    currentText = [currentText substringToIndex:currentText.length-1];
    if ([currentText isEqualToString:@""]) {
        self.displayLabel.text = @"0";
        self.isUserTiping = NO;
    } else {
        self.displayLabel.text = currentText;
    }
}


@end
