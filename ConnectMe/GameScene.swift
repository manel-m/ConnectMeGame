//
//  GameScene.swift
//  MovingBlocks
//
//  Created by Manel matougui on 9/26/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
import GameplayKit

// all nodes that implement this protocol will have their method didMoveToScene() called when the scene starts
protocol EventListenerNode {
    func didMoveToScene()
}

// physics for label "Nice job"
struct PhysicsCategory {
    static let Label:   UInt32 = 0// 1
    static let Edge: UInt32 = 0b1 // 2

}

class GameScene: SKScene, WinCallback , SKPhysicsContactDelegate {
    
    static var grid: Grid! // reference of level grid
    static var currentLevel: Int = 1

    var lastTouchLocation : CGPoint?

    static func loadLevel(grid: Grid) {
        let levelStr = Levels.levels[currentLevel-1]
        Levels.loadLevel(grid: grid, str: levelStr)
    }

    override func didMove(to: SKView) {
        // add grid to the scene (in case nul : if let)
        if let grid = Grid(blockSize: 185.0, rows:5, cols:5, delegate: self) {
            GameScene.grid = grid

            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            grid.name = "grid"
            addChild(grid)
            let label = LabelNode(message: "\(GameScene.currentLevel) / 100")
            label.position = CGPoint (x:760, y:1850)
            addChild(label)
            
            // add levels to the scene
            GameScene.loadLevel(grid: grid)
            // loop for all the childnodes // didMoveTOScene implemented in other class
            enumerateChildNodes(withName: "//*", using: { node, _ in
                if let eventListenerNode = node as? EventListenerNode {
                    eventListenerNode.didMoveToScene()
                }
            })
        }
        
        // Calculate playable margin
        let maxAspectRatio: CGFloat = 16.0/9.0
        let maxAspectRatioHeight = size.width / maxAspectRatio
        let playableMargin: CGFloat = (size.height - maxAspectRatioHeight)/2
        let playableRect = CGRect(x: 0, y: playableMargin, width: size.width, height: size.height-playableMargin*2)
        
        // physics for label "Nice job"
        physicsBody = SKPhysicsBody(edgeLoopFrom: playableRect)
        physicsWorld.contactDelegate = self
        physicsBody!.categoryBitMask = PhysicsCategory.Edge
        
        // add Background Music
        if !MusicButton.musicPaused {
     SKTAudio.sharedInstance().playBackgroundMusic("backgroundMusic.mp3")
        }
        
    }
    
    // if the player win
    func gameWon() {
        run(SKAction.afterDelay(3, runBlock: newGame)) // show the next level after 3 seconds
        inGameMessage(text: "Nice job!")// show win label
        // pause and add play Sound Effect
        if !SoundButton.SoundPaused {
            SKTAudio.sharedInstance().pauseBackgroundMusic()
            SKTAudio.sharedInstance().playSoundEffect("win.wav")
        }
    }
    // show next level
    func newGame() {
        GameScene.currentLevel += 1
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            // Present the scene
            view!.presentScene(scene)
        }
    }
    // add win message "Nice job"
    func inGameMessage(text: String) {
        let message = MessageNode(message: text)
        message.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(message)
    }

}
