//
//  ViewController.m
//  iReview
//
//  Created by Oscar on 9/23/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField        *reviewerNameField;
@property (nonatomic, weak) IBOutlet UITextView         *reviewView;
@property (nonatomic, weak) IBOutlet UISegmentedControl *overallRatingsSegControl;
@property (nonatomic, weak) IBOutlet UISwitch           *recommendSwitch;
@property (nonatomic, weak) IBOutlet UISlider           *foodRatingsSlider;
@property (nonatomic, weak) IBOutlet UIStepper          *serviceRatingsStepper;
@property (nonatomic, weak) IBOutlet UILabel            *serviceRatingsLabel;
@property (nonatomic, weak) IBOutlet UIButton           *submitButton;

@end

@implementation ViewController

#pragma mark - Interactivity Methods

- (IBAction)textFieldChanged:(id)sender {
    NSLog(@"The reviewer's name is %@", _reviewerNameField.text);
}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"%@", textView.text);
}

- (IBAction)segControlChanged:(UISegmentedControl *)mySegControl {
    NSString *nameString = [_overallRatingsSegControl titleForSegmentAtIndex:mySegControl.selectedSegmentIndex];
    NSLog(@"Overall Rating is %@", nameString);
}

- (IBAction)sliderValueChanged:(UISlider *)mySlider {
    NSLog(@"Food Rating is %f", mySlider.value);
}

- (IBAction)stepperValueChanged:(UIStepper *)myStepper {
    double value = myStepper.value;
    [_serviceRatingsLabel setText:[NSString stringWithFormat:@"%d", (int)value]];
    NSLog(@"Service Rating is  %f",myStepper.value);
}

- (IBAction)switchValueChanged:(UISwitch *)mySwitch {
    NSLog(@"Does Recommend %i", mySwitch.isOn);
}

- (IBAction)reviewSubmit:(id)sender {
    NSLog(@"Review submitted");
    NSLog(@"%@, %@, %ld, %f, %f, %i",_reviewerNameField.text, _reviewView.text, _overallRatingsSegControl.selectedSegmentIndex, _foodRatingsSlider.value, _serviceRatingsStepper.value,_recommendSwitch.isOn);
}

#pragma mark - Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    [_recommendSwitch setOn:false animated:true];
    //[_foodRatingsSlider setValue:5];
    //[_serviceRatingsStepper setValue:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
