//
//  RetryButton.swift
//  ConnectMe
//
//  Created by Manel matougui on 1/26/20.
//  Copyright © 2020 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class RetryButton : SKSpriteNode {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }

    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
       if let game = SKScene(fileNamed: "GameScene") {
           // Set the scale mode to scale to fit the window
           game.scaleMode = .aspectFill
           // Present the scene
           scene?.view?.presentScene(game)
       }
    }
}
