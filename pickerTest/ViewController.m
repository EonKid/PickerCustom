//
//  ViewController.m
//  pickerTest
//
//  Created by Aseem 1 on 10/12/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import "ViewController.h"
#import "AADatePicker.h"
@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

-(void)viewDidLayoutSubviews
{
    AADatePicker *datePicker = [[AADatePicker alloc] initWithFrame:_view1.frame maxDate:[NSDate dateWithTimeIntervalSinceNow:7*24*60*60] minDate:[NSDate date] showValidDatesOnly:NO];
    
    datePicker.delegate = self;
    [self.view addSubview:datePicker];
//    
//    self.dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(datePicker.frame), self.view.frame.size.width, 40)];
//    [self.dateLabel setTextAlignment:NSTextAlignmentCenter];
//    [self.dateLabel setFont:[UIFont systemFontOfSize:12.0f]];
//    [self.view addSubview:self.dateLabel];
    
    
    TimePicker *datePicker2 = [[TimePicker alloc] initWithFrame:_view2.frame maxDate:[NSDate dateWithTimeIntervalSinceNow:7*24*60*60] minDate:[NSDate date] showValidDatesOnly:NO];
    datePicker2.delegate = self;
    
    [self.view addSubview:datePicker2];
    
//    self.dateLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(datePicker.frame), self.view.frame.size.width, 40)];
//    [self.dateLabel2 setTextAlignment:NSTextAlignmentCenter];
//    [self.view addSubview:self.dateLabel2];
    
    AADatePicker *datePicker3 = [[AADatePicker alloc] initWithFrame:_viewb1.frame maxDate:[NSDate dateWithTimeIntervalSinceNow:7*24*60*60] minDate:[NSDate date] showValidDatesOnly:NO];
    
    datePicker3.delegate = self;
    
    [self.view addSubview:datePicker3];
    
    TimePicker *datePicker4 = [[TimePicker alloc] initWithFrame:_viewb2.frame maxDate:[NSDate dateWithTimeIntervalSinceNow:7*24*60*60] minDate:[NSDate date] showValidDatesOnly:NO];
    
    datePicker4.delegate = self;
    [self.view addSubview:datePicker4];
    


}

-(void)dateChanged:(AADatePicker *)sender
{
    NSString *dateString = [NSDateFormatter localizedStringFromDate:sender.date
                                                          dateStyle:NSDateFormatterShortStyle
                                                          timeStyle:NSDateFormatterMediumStyle];
  //  NSLog(@"%@",dateString);
    
    [self.dateLabel setText:dateString];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UIPicker Delegate & DataSource


@end
