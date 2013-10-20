//
//  EXQMainGameViewController.m
//  exquisitecorpose
//
//  Created by Reid van Melle on 2013-10-19.
//  Copyright (c) 2013 Startup Weekend. All rights reserved.
//

#import "EXQMainGameViewController.h"
#import "EXQScene.h"
#import "EXQCanvas.h"
#import "EXQGameState.h"

@implementation EXQMainGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self _EXQPresentSpriteKitScene];
    [self _EXQSetupDoneButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)_EXQPresentSpriteKitScene
{
    // Configure the view.
    SKView *skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    CGSize size = skView.bounds.size;
    EXQScene *scene = [EXQScene sceneWithSize:size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    self.scene = scene;
    
    // Configure the scene
    scene.gameState = self.gameState;
    
    // Present the scene
    [skView presentScene:scene];
}

- (void)_EXQSetupDoneButton
{
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    self.navigationItem.rightBarButtonItem = done;
}

#pragma mark - Drawing actions

- (IBAction)undoStroke:(id)sender
{
    [self.scene undoLastStrokeOnActiveCanvasAnimated:YES];
}

- (IBAction)done:(id)sender
{
    
}


@end
