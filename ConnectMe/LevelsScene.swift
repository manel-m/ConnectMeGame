//
//  LevelsScene.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
import GameplayKit

class LevelsScene: SKScene {
    
    static var firstLevel: Int = 1

    override func didMove(to: SKView) {
        
        if !MusicButton.musicPaused {
        SKTAudio.sharedInstance().playBackgroundMusic("backgroundMusic1.mp3")
        }
        let label = LabelNode(message: "\(LevelsScene.firstLevel) - \(LevelsScene.firstLevel+19)")
        label.position = CGPoint (x:768, y:1700)
        label.fontColor = SKColor.orange
        label.fontName = "Chalkduster"
        addChild(label)
        
        // go through all buttons and update their state
        enumerateChildNodes(withName: "//*", using: { node, _ in
            if let btn = node as? SelectLevelButton {
                let num: Int = Int(btn.name!)! + LevelsScene.firstLevel - 1
                if num <= Levels.lastUnlocked {
                    btn.setUnlocked(num: num)
                } else {
                    btn.setLocked()
                }
            }
        })

    }
}
