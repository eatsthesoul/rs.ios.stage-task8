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
#import "UIColor+CustomColors.h"
#import "CanvasView+Landscape.h"
#import "CanvasView+Tree.h"
#import "CanvasView+Head.h"
#import "CanvasView+Planet.h"
#import "NSMutableArray+Shuffle.h"

@class TimerVC;

@interface ArtistVC () <UIViewControllerTransitioningDelegate>

@property (nonatomic, assign) ArtistVCCondition condition;

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) RSButton *openPaletteButton;
@property (nonatomic, strong) RSButton *openTimerButton;
@property (nonatomic, strong) RSButton *drawButton;
@property (nonatomic, strong) RSButton *shareButton;

@property (nonatomic, strong) ColorsVC *colorsVC;
@property (nonatomic, strong) TimerVC *timerVC;
@property (nonatomic, strong) DrawingsVC *drawingsVC;

@property(nonatomic, copy) NSTimer *redrawTimer;

@end

@implementation ArtistVC

//MARK: Lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Artist";
    
    [self setupUIElements];
    [self setupAppearance];
    [self setIdleCondition];
}

//MARK: Private UI Methods

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
    [self.drawButton addTarget:self action:@selector(tapDrawButton) forControlEvents:UIControlEventTouchUpInside];
    
    //shareButton
    self.shareButton = [[RSButton alloc] init];
    self.shareButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    [self.shareButton addTarget:self action:@selector(tapShareButton) forControlEvents:UIControlEventTouchUpInside];
    
    //rightBarButtonItem
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(tapDrawingsButton)];
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

- (void)setIdleCondition {
    self.condition = ArtistVCConditionIdle;
    [self.openPaletteButton setEnabled:YES];
    [self.openTimerButton setEnabled:YES];
    [self.drawButton setEnabled:YES];
    [self.shareButton setEnabled:NO];
    [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
}

- (void)setDrawCondition {
    self.condition = ArtistVCConditionDraw;
    [self.openPaletteButton setEnabled:NO];
    [self.openTimerButton setEnabled:NO];
    [self.drawButton setEnabled:NO];
    [self.shareButton setEnabled:NO];
}

- (void)setDoneCondition {
    self.condition = ArtistVCConditionDone;
    [self.openPaletteButton setEnabled:NO];
    [self.openTimerButton setEnabled:NO];
    [self.drawButton setEnabled:YES];
    [self.shareButton setEnabled:YES];
    [self.drawButton setTitle:@"Reset" forState:UIControlStateNormal];
}

//MARK: Canvas Drawing Methods

- (NSArray<UIColor *> *)generateColorsForCanvas {
    NSMutableArray *colors = [[NSMutableArray alloc] initWithArray:Service.sharedInstance.colorsArray];
    while (colors.count < 3) {
        [colors addObject:UIColor.blackColor];
    }
    [colors shuffle];
    return [colors copy];
}

- (void)getVectorForCanvas {
    //getting necessary data from Service
    self.canvasView.type = Service.sharedInstance.canvasType;
    
    //getting colors
    NSArray *colors = [self generateColorsForCanvas];
    
    switch (self.canvasView.type) {
        case CanvasTypeLandscape:
            [self.canvasView getLandscapeVectorWithColors:colors];
            break;
        case CanvasTypeTree:
            [self.canvasView getTreeVectorWithColors:colors];
            break;
        case CanvasTypeHead:
            [self.canvasView getHeadVectorWithColors:colors];
            break;
        case CanvasTypePlanet:
            [self.canvasView getPlanetVectorWithColors:colors];
            break;
    }
}

- (void)drawCanvas {
    float timerValue = Service.sharedInstance.timeForPainting;
    
    __block float stroke = 0;
    self.redrawTimer = [NSTimer scheduledTimerWithTimeInterval:0.01667 repeats:YES block:^(NSTimer * _Nonnull timer) {
        stroke += (0.01667 / timerValue);
        [self.canvasView setupLayersStrokeEnd:stroke];
        if (stroke >= 1)  {
            [timer invalidate];
            [self setDoneCondition];
        }
    }];
}

- (void)clearCanvas {
    float timerValue = 0.5;
    
    __block float stroke = 1;
    self.redrawTimer = [NSTimer scheduledTimerWithTimeInterval:0.01667 repeats:YES block:^(NSTimer * _Nonnull timer) {
        stroke -= (0.01667 / timerValue);
        [self.canvasView setupLayersStrokeEnd:stroke];
        if (stroke <= 0)  {
            [timer invalidate];
            [self setIdleCondition];
        }
    }];
}

//MARK: - Handlers

- (void)tapDrawingsButton {
    self.drawingsVC = [[DrawingsVC alloc] init];
    [self.navigationController pushViewController:self.drawingsVC animated:true];
}

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

- (void)tapDrawButton {
    //idle condition
    if (self.condition == ArtistVCConditionIdle) {
        [self setDrawCondition];
        [self getVectorForCanvas];
        [self drawCanvas];
    }
    
    //done condition
    if (self.condition == ArtistVCConditionDone) {
        [self clearCanvas];
    }
}

- (void)tapShareButton {
    UIGraphicsBeginImageContext(self.canvasView.bounds.size);
    [self.canvasView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[image] applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}

//MARK: - UIViewControllerTransitioningDelegate

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented
                                                      presentingViewController:(UIViewController *)presenting
                                                          sourceViewController:(UIViewController *)source
{
    return [[CustomPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

@end
