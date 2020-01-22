//
//  BlockNode.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/9/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//


import SpriteKit

class BlockNode: SKSpriteNode , EventListenerNode {
    
    var beforeDrag: CGPoint = CGPoint();
    public var num:Int = 0
    private var count:Int = 0

    // call it in Gamescene.didMove
    func didMoveToScene() {
        zPosition = 1
        self.isUserInteractionEnabled = true
    }
    
    // sritekit will call this method when player touchs block
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if let touch = touches.first {
            // drag started, save current block position
            beforeDrag = position;
            let touchLocation = touch.location(in: GameScene.grid)
            // set node position to current touch position
            position = touchLocation;
            zPosition = 2
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            // move block with touch location
            let touchLocation = touch.location(in: GameScene.grid)
            position = touchLocation;
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            // drag ended, block should be over target grid cell
            if !GameScene.grid.moveBlock(block: self) {
                position = beforeDrag
            }
            zPosition = 1
        }
    }
    
    public func setNumNeighbors(count: Int) {
        self.count = count
        // update texture
        if count > num {
            texture = SKTexture(imageNamed: "x-\(num)")
        } else {
            texture = SKTexture(imageNamed: "\(count)-\(num)")
        }
    }
    
    public func isFull() -> Bool {
        return count == num
    }
}
