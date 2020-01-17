//
//  LabelNode.swift
//  MovingBlocks
//
//  Created by Manel matougui on 12/19/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class LabelNode: SKLabelNode  {
    convenience init(message: String, size: CGFloat = 120) {
        self.init(fontNamed: "MarkerFelt-Thin")
        text = message
        fontSize = size
        fontColor = SKColor.white
        zPosition = 100
//        let front = SKLabelNode(fontNamed: "MarkerFelt-Thin")
//        front.text = message
//        front.fontSize = size
//        front.fontColor = SKColor.purple
//        front.position = CGPoint(x: -2, y: -2)
//        addChild(front)
}
}
