//
//  MessageNode.swift
//  CatNap
//
//  Created by Manel matougui on 7/15/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import SpriteKit
class MessageNode: SKLabelNode  {
    convenience init(message: String) {
        self.init(fontNamed: "MarkerFelt-Thin")
        text = message
        fontSize = 256.0
        fontColor = SKColor.white
        zPosition = 100
        let front = SKLabelNode(fontNamed: "MarkerFelt-Thin")
        front.text = message
        front.fontSize = 256.0
        front.fontColor = SKColor.purple
        front.position = CGPoint(x: -2, y: -2)
        addChild(front)
        physicsBody = SKPhysicsBody(circleOfRadius: 10)
        physicsBody!.collisionBitMask = PhysicsCategory.Edge
        physicsBody!.categoryBitMask = PhysicsCategory.Label
        physicsBody!.restitution = 0.8
        physicsBody!.contactTestBitMask = PhysicsCategory.Edge
    }
    
    var numOfBounces = 0
    func didBounce() {
        numOfBounces += 1
        if numOfBounces >= 6 {
            run(SKAction.removeFromParent())
        }
    }
}
