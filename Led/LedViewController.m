//
//  LedViewController.m
//  Led
//
//  Created by gianni on 3/15/13.
//  Copyright (c) 2013 gianni. All rights reserved.
//

#import "LedViewController.h"

@interface LedViewController ()

@end

@implementation LedViewController
@synthesize txtUrl = _txtUrl;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)readApi     //nuovo blocco per vedere cosa capita
{
    NSURL *aUrl = [NSURL URLWithString:_txtUrl.text];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:aUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request setHTTPMethod:@"POST"];
    NSString *postString = @"btn_01=";
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    NSURLConnection *connection= [[NSURLConnection alloc] initWithRequest:request
                                                                 delegate:self];
    NSLog(@"%@",connection);
}

//http://www.youtube.com/watch?v=WgnRjp1ZEkY
- (IBAction)backgroundTouched:(id)sender{
    [_txtUrl resignFirstResponder];
}

- (IBAction)textfieldReturn:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)led_on:(id)sender {
    NSURL *aUrl = [NSURL URLWithString:_txtUrl.text];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:aUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request setHTTPMethod:@"POST"];
    NSString *postString = @"btn_01=";
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    NSURLConnection *connection= [[NSURLConnection alloc] initWithRequest:request
                                                                 delegate:self];
    NSLog(@"%@",connection);
}
- (IBAction)led_off:(id)sender {
    NSURL *aUrl = [NSURL URLWithString:_txtUrl.text];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:aUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    [request setHTTPMethod:@"POST"];
    NSString *postString = @"btn_02=";
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    NSURLConnection *connection= [[NSURLConnection alloc] initWithRequest:request
                                                                 delegate:self];
    NSLog(@"%@",connection);
}

- (void)viewDidUnload {
    [self setLed_on:nil];
    [self setLed_off:nil];
    [self setTxtUrl:nil];
    [super viewDidUnload];
}

@end
