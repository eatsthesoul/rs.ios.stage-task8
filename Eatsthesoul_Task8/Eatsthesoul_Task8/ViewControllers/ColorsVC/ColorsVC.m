//
//  ColorsVC.m
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 17.07.21.
//

#import "ColorsVC.h"
#import "ColorButton.h"
#import "UIColor+CustomColors.h"
#import "RSButton.h"
#import "Service.h"

@interface ColorsVC ()

@property (nonatomic, strong) RSButton *saveButton;
@property (nonatomic, strong) NSMutableArray<ColorButton *> *colorButtonsArray;
@property (nonatomic, strong) UIStackView *firstHorizontalStackView;
@property (nonatomic, strong) UIStackView *secondHorizontalStackView;
@property (nonatomic, strong) UIStackView *verticalStackView;

@property (nonatomic, strong) NSMutableArray<ColorButton *> *pressedButtons;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ColorsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUIElements];
    [self setupAppearance];
    [self setupTargetsForColorButtons];
    
    self.pressedButtons = [[NSMutableArray alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [self updatePressedColorButtons];
}

//MARK: - UI Methods

- (void)setupUIElements {
    //self view
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.layer.shadowColor = UIColor.greyShadowColor.CGColor;
    self.view.layer.shadowRadius = 8;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
    self.view.layer.shadowOpacity = 1;
    self.view.layer.cornerRadius = 40;
    
    //saveButton
    self.saveButton = [[RSButton alloc] init];
    self.saveButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.saveButton setTitle:@"Save" forState:UIControlStateNormal];
    [self.saveButton addTarget:self action:@selector(saveButtonHandler) forControlEvents:UIControlEventTouchUpInside];
    
    //firstHorizontalStackView
    self.firstHorizontalStackView = [[UIStackView alloc] init];
    self.firstHorizontalStackView.axis = UILayoutConstraintAxisHorizontal;
    self.firstHorizontalStackView.spacing = 20;
    
    //secondHorizontalStackView
    self.secondHorizontalStackView = [[UIStackView alloc] init];
    self.secondHorizontalStackView.axis = UILayoutConstraintAxisHorizontal;
    self.secondHorizontalStackView.spacing = 20;
    
    //color buttons
    [self addColorButtons];
    
    //verticalStackView
    self.verticalStackView = [[UIStackView alloc] init];
    self.verticalStackView.axis = UILayoutConstraintAxisVertical;
    [self.verticalStackView addArrangedSubview:self.firstHorizontalStackView];
    [self.verticalStackView addArrangedSubview:self.secondHorizontalStackView];
    self.verticalStackView.spacing = 20;
    self.verticalStackView.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)setupAppearance
{
    [self.view addSubview:self.saveButton];
    [self.view addSubview:self.verticalStackView];
    
    [NSLayoutConstraint activateConstraints:@[
        //saveButton
        [self.saveButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20],
        [self.saveButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40],
        
        //verticalStackView
        [self.verticalStackView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.verticalStackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:92],
        [self.verticalStackView.heightAnchor constraintEqualToConstant:100]
    ]];
}

- (void)addColorButtons {
    
    //get colors
    NSArray *colorsArray = [UIColor paletteColors];
    
    //init colorButtonsArray
    self.colorButtonsArray = [[NSMutableArray alloc] init];
    
    //first part
    for(int i = 0; i < colorsArray.count / 2; i++) {
        ColorButton *colorButton = [[ColorButton alloc] initWithColor:colorsArray[i]];
        [self.colorButtonsArray addObject:colorButton];
        [self.firstHorizontalStackView addArrangedSubview:colorButton];
    }
    
    //second part
    for(unsigned long i = colorsArray.count / 2; i < colorsArray.count; i++) {
        ColorButton *colorButton = [[ColorButton alloc] initWithColor:colorsArray[i]];
        [self.colorButtonsArray addObject:colorButton];
        [self.secondHorizontalStackView addArrangedSubview:colorButton];
    }
}

- (void)updatePressedColorButtons {
    NSArray<UIColor *> *savedColorsArray = [[Service sharedInstance] colorsArray];
    for(int i = 0; i < self.colorButtonsArray.count; i++) {
        for(int j = 0; j < savedColorsArray.count; j++) {
            if ([self.colorButtonsArray[i].enteredView.backgroundColor isEqual:savedColorsArray[j]]) {
                [self.colorButtonsArray[i] press];
                [self.pressedButtons addObject:self.colorButtonsArray[i]];
            }
        }
    }
}

- (void)returnBackgroundColor {
    self.view.backgroundColor = UIColor.whiteColor;
}

//MARK: - Handlers

- (void)setupTargetsForColorButtons {
    for(int i = 0; i < self.colorButtonsArray.count; i++) {
        [self.colorButtonsArray[i] addTarget:self
                                      action:@selector(tapColoredButton:)
                            forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)tapColoredButton:(ColorButton *)sender {
    
    if (!sender.isPressed) {
        
        //remove first pressed button if there are 3 pressed buttons
        if (self.pressedButtons.count == 3) {
            [self.pressedButtons[0] press];
            [self.pressedButtons removeObjectAtIndex:0];
        }
        
        //add pressed now
        [sender press];
        [self.pressedButtons addObject:sender];
        
        //change view background color
        self.view.backgroundColor = sender.enteredView.backgroundColor;
        
        //retun default background color after 1 sec
        if (self.timer.isValid) { [self.timer invalidate]; }
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(returnBackgroundColor)
                                                    userInfo:nil
                                                     repeats:NO];
    } else {
        [sender press];
        [self.pressedButtons removeObject:sender];
    }
}

- (void)saveButtonHandler {
    //get selected colors
    NSMutableArray *colorsArray = [[NSMutableArray alloc] init];
    for(int i = 0; i < self.pressedButtons.count; i++) {
        [colorsArray addObject:self.pressedButtons[i].enteredView.backgroundColor];
    }
    
    //save colors to service
    [[Service sharedInstance] setColorsArray:colorsArray];
    
    //close VC
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
