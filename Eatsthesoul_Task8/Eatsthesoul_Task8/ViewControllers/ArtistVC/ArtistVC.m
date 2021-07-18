//
//  ArtistVC.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "ArtistVC.h"
#import "CanvasView.h"
#import "RSButton.h"
#import "CustomPresentationController.h"
#import "ColorsVC.h"
#import "Service.h"
#import "Eatsthesoul_Task8-Swift.h"

@class TimerVC;

@interface ArtistVC () <UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) UIView *canvasView;
@property (nonatomic, strong) RSButton *openPaletteButton;
@property (nonatomic, strong) RSButton *openTimerButton;
@property (nonatomic, strong) RSButton *drawButton;
@property (nonatomic, strong) RSButton *shareButton;

@property (nonatomic, strong) ColorsVC *colorsVC;
@property (nonatomic, strong) TimerVC *timerVC;

@end

@implementation ArtistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Artist";
    
    [self setupUIElements];
    [self setupAppearance];
    
}

- (void)setupUIElements {
    
    //canvasView
    self.canvasView = [[CanvasView alloc] init];
    self.canvasView.backgroundColor = [UIColor whiteColor];
    self.canvasView.translatesAutoresizingMaskIntoConstraints = NO;
    
    //openPaletteButton
    self.openPaletteButton = [[RSButton alloc] init];
    self.openPaletteButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.openPaletteButton setTitle:@"Open Palette" forState:UIControlStateNormal];
    [self.openPaletteButton addTarget:self action:@selector(tapPalleteButton) forControlEvents:UIControlEventTouchUpInside];
    
    //openTimerButton
    self.openTimerButton = [[RSButton alloc] init];
    self.openTimerButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.openTimerButton setTitle:@"Open Timer" forState:UIControlStateNormal];
    [self.openTimerButton addTarget:self action:@selector(tapTimerButton) forControlEvents:UIControlEventTouchUpInside];
    
    //drawButton
    self.drawButton = [[RSButton alloc] init];
    self.drawButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    
    //shareButton
    self.shareButton = [[RSButton alloc] init];
    self.shareButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    
}

- (void)setupAppearance {
    
    [self.view addSubview:self.canvasView];
    [self.view addSubview:self.openPaletteButton];
    [self.view addSubview:self.openTimerButton];
    [self.view addSubview:self.drawButton];
    [self.view addSubview:self.shareButton];
    
    [NSLayoutConstraint activateConstraints:@[
        //canvasView
        [self.canvasView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:40],
        [self.canvasView.heightAnchor constraintEqualToConstant:300],
        [self.canvasView.widthAnchor constraintEqualToConstant:300],
        [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        
        //openPaletteButton
        [self.openPaletteButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50],
        [self.openPaletteButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        
        //openTimerButton
        [self.openTimerButton.topAnchor constraintEqualToAnchor:self.openPaletteButton.bottomAnchor constant:20],
        [self.openTimerButton.leadingAnchor constraintEqualToAnchor:self.openPaletteButton.leadingAnchor],
        
        //drawButton
        [self.drawButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50],
        [self.drawButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-41],
        
        //shareButton
        [self.shareButton.topAnchor constraintEqualToAnchor:self.drawButton.bottomAnchor constant:20],
        [self.shareButton.trailingAnchor constraintEqualToAnchor:self.drawButton.trailingAnchor]
    ]];
}

//MARK: - Handlers

- (void)tapPalleteButton {
    self.colorsVC = [[ColorsVC alloc] init];
    self.colorsVC.transitioningDelegate = self;
    self.colorsVC.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:self.colorsVC animated:true completion:nil];
}

- (void)tapTimerButton {
    self.timerVC = [[TimerVC alloc] init];
    self.timerVC.transitioningDelegate = self;
    self.timerVC.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:self.timerVC animated:true completion:nil];
}

//MARK: - UIViewControllerTransitioningDelegate

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented
                                                      presentingViewController:(UIViewController *)presenting
                                                          sourceViewController:(UIViewController *)source
{
    return [[CustomPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}



@end
