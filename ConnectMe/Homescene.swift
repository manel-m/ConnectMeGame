//
//  Homescene.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/18/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//
import SpriteKit
import GameplayKit

class Homescene: SKScene {
    override func didMove(to: SKView) {
        Levels.loadSavedGame()
        SKTAudio.sharedInstance().playBackgroundMusic("backgroundMusic1.mp3")
    }
}
