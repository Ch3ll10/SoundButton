//
//  DRViewController.m
//  Sonido Automatico
//
//  Created by Axel Ulises Díaz Reyes on 03/07/14.
//  Copyright (c) 2014 Axel Ulises Díaz Reyes. All rights reserved.
//

#import "DRViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface DRViewController ()

@end

@implementation DRViewController

- (void)viewDidLoad
{
    NSString *ruta = [[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"];
    AVAudioPlayer *sonido = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:ruta] error:NULL];
    [sonido play];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
