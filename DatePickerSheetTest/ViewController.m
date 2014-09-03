//
//  ViewController.m
//  DatePickerSheetTest
//
//  Created by dujinfeng481 on 14-9-2.
//  Copyright (c) 2014年 djf. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerSheet.h"

@interface ViewController () <DatePickerSheetDelegate>

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    DatePickerSheet * datePickerSheet = [DatePickerSheet getInstance];
    [datePickerSheet initializationWithMaxDate:nil
                                   withMinDate:nil
                            withDatePickerMode:UIDatePickerModeDate
                                  withDelegate:self];
    [datePickerSheet showDatePickerSheet];
    
    
    return NO;
}

#pragma mark - DatePickerSheetDelegate method
-(void) datePickerSheet:(DatePickerSheet*)datePickerSheet chosenDate:(NSDate*)date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *dateString = [formatter stringFromDate:date];
    NSLog(@"dateString:%@", dateString);
    
    [self.curTextField setText:dateString];
}


@end
