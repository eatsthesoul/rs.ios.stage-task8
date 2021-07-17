//
//  ArtistVC.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 16.07.21.
//

#import "ArtistVC.h"
#import "CanvasView.h"

@interface ArtistVC ()

@property (nonatomic, strong) UIView *canvasView;

@end

@implementation ArtistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Artist";
    
    self.canvasView = [[CanvasView alloc] init];
    self.canvasView.backgroundColor = [UIColor whiteColor];
    self.canvasView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.canvasView];
    
    
    
    [NSLayoutConstraint activateConstraints:@[
        [self.canvasView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:40],
        [self.canvasView.heightAnchor constraintEqualToConstant:300],
        [self.canvasView.widthAnchor constraintEqualToConstant:300],
        [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor]
    ]];
}

- (void)setupUI {
    
    
    
}

@end
