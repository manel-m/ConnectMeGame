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
    private var levelNum:Int?
    
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setLocked() {
        texture = SKTexture(imageNamed: "lock_button")
        // no user interaction so touchesBegan() will never be called
    }
    
    func setUnlocked(num: Int) {
        levelNum = num
        texture = SKTexture(imageNamed: "orange_circle_button")
        let label = LabelNode(message: "\(num)", size : 80)
        label.position.y -= 20
        addChild(label)

        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        GameScene.currentLevel = levelNum!
        if let game = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            game.scaleMode = .aspectFill
            // Present the scene
            scene?.view?.presentScene(game)
        }
        
    }
    
}
