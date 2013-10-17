//
//  LedViewController.h
//  Led
//
//  Created by gianni on 3/15/13.
//  Copyright (c) 2013 gianni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LedViewController : UIViewController <UITextFieldDelegate>

@property (unsafe_unretained, nonatomic) IBOutlet UIButton *led_on;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *led_off;
@property (weak, nonatomic) IBOutlet UITextField *txtUrl;

- (IBAction)textfieldReturn:(id)sender;
- (IBAction)backgroundTouched:(id)sender;

@end
