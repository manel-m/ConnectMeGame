//
//  HomeButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class HomeButton : SKSpriteNode {
    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        print("homebutton pressed")
        if let home = SKScene(fileNamed: "Home"){
            // Set the scale mode to scale to fit the window
            home.scaleMode = .aspectFill
            // Present the scene
            scene?.view?.presentScene(home)
        }
       
     }
}
