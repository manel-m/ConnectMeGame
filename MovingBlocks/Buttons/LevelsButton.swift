//
//  LevelsButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class LevelsButton : SKSpriteNode {
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        print("button pressed")
        if let levels = SKScene(fileNamed: "LevelsSelector"){
            // Set the scale mode to scale to fit the window
            levels.scaleMode = .aspectFill
            // Present the scene
            scene?.view?.presentScene(levels)
        }
        
    }
}
