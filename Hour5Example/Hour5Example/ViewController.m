//
//  ViewController.m
//  Hour5Example
//
//  Created by ITCS2825 Kozlevcar on 1/23/15.
//  Copyright (c) 2015 lcc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *RPSImageView;
- (IBAction)btnChangeImage:(UIButton *)sender;
@property(strong, nonatomic) NSArray *RPSImages;
@property int RPSIdx;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.RPSImages=@[@"rock.jpg", @"paper.jpg", @"scissors.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChangeImage:(UIButton *)sender
{
    self.RPSImageView.image = [UIImage imageNamed:self.RPSImages[++self.RPSIdx%3]];
}
@end
