//
//  EXQScene.h
//  exquisitecorpose
//
//  Created by Josh Svatek on 10/19/2013.
//  Copyright (c) 2013 Startup Weekend. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
@class EXQCanvas, EXQScene, EXQDrawingState, EXQGameState;

@protocol EXQSceneDelegate <NSObject>
- (void)sceneDidFinishDrawing:(EXQScene *)scene;
@end


@interface EXQScene : SKScene

// Canvases
@property (strong, nonatomic) EXQCanvas *playerCanvas1;
@property (strong, nonatomic) EXQCanvas *playerCanvas2;
@property (strong, nonatomic) EXQCanvas *playerCanvas3;
@property (strong, nonatomic) SKShapeNode *dottedLine1;
@property (strong, nonatomic) SKShapeNode *dottedLine2;

// Delegate
@property (weak, nonatomic) id<EXQSceneDelegate> delegate;

// State
@property (strong, nonatomic) EXQDrawingState *drawingState;
@property (strong, nonatomic) EXQGameState *gameState;



@end
