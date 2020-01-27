//
//  WinScene.swift
//  ConnectMe
//
//  Created by Manel matougui on 1/26/20.
//  Copyright © 2020 Manel matougui. All rights reserved.
//

import SpriteKit
import GameplayKit

class WinScene: SKScene {
    
    static var firstLevel: Int = 1

    override func didMove(to: SKView) {
        
        if !MusicButton.musicPaused {
            SKTAudio.sharedInstance().playSoundEffect("win.wav")
        
        }
        
        
    }
}
