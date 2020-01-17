//
//  SelectLevelButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/19/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class SelectLevelButton : SKSpriteNode {
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
        let label = LabelNode(message: self.name!, size : 80)
        
        label.position.y -= 20
        addChild(label)
}
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        print("button pressed")
        let level = Int(self.name!)
        GameScene.currentLevel = level!
        if let game = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            game.scaleMode = .aspectFill
            // Present the scene
            scene?.view?.presentScene(game)
        }
        
    }
    
}
