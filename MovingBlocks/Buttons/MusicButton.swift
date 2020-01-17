//
//  MusicButton.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/17/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import SpriteKit
class MusicButton : SKSpriteNode {
    static var musicPaused = false

    let musicOnTexture = SKTexture(imageNamed: "btn-music")
    let musicOffTexture = SKTexture(imageNamed: "btn-music-off")

    // initialize playButton
    // we need constructor to enable user interaction
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
        self.texture = MusicButton.musicPaused ? musicOffTexture : musicOnTexture
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        if MusicButton.musicPaused {
            SKTAudio.sharedInstance().resumeBackgroundMusic()
            MusicButton.musicPaused = false
        } else {
            SKTAudio.sharedInstance().pauseBackgroundMusic()
            MusicButton.musicPaused = true
        }
        self.texture = MusicButton.musicPaused ? musicOffTexture : musicOnTexture
    }
}
