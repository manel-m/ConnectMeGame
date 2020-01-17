//
//  PlayButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 11/4/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class PlayButton : SKSpriteNode {
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }

    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        print("button pressed")
        newGame()
    }
    
    // start a new level
    func newGame() {
        GameScene.currentLevel = 1
        if let game = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            game.scaleMode = .aspectFill
            // Present the scene
            scene?.view?.presentScene(game)
        }
    }

}
