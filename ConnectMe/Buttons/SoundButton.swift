//
//  SoundButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class SoundButton : SKSpriteNode {
    static var SoundPaused = false

    let soundOnTexture = SKTexture(imageNamed: "btn-sound")
    let soundOffTexture = SKTexture(imageNamed: "btn-sound-off")

    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
        texture = SoundButton.SoundPaused ? soundOffTexture : soundOnTexture
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        if SoundButton.SoundPaused {
            SoundButton.SoundPaused = false
//            print("sound off")
        } else {
            SoundButton.SoundPaused = true
//            print("sound on")
        }
        texture = SoundButton.SoundPaused ? soundOffTexture : soundOnTexture
    }
}
