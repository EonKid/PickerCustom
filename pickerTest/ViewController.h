//
//  ViewController.h
//  pickerTest
//
//  Created by Aseem 1 on 10/12/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AADatePicker.h"
#import "TimePicker.h"

@interface ViewController : UIViewController<AADatePickerDelegate>

@property (strong, nonatomic) UILabel *dateLabel;
@property (strong, nonatomic) UILabel *dateLabel2;


@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;


@property (strong, nonatomic) IBOutlet UIView *viewb1;
@property (strong, nonatomic) IBOutlet UIView *viewb2;

@end

