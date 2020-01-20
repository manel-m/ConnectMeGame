//
//  Levels.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/29/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class Levels {
    // random seed 1573399154514
    static let levels: [String] = [
       "_________1__1____________",
       "__211__1_________________"
    ]

    static func loadLevel(grid:Grid, str: String) {
        let chars = Array(str)
        var idx = 0
        for row in 0...4 {
            for col in 0...4 {
                let char = chars[idx]
                if (char == "1") {
                    grid.addBlock(row: row, col: col, num: 1)
                } else if (char == "2") {
                    grid.addBlock(row: row, col: col, num: 2)
                } else if (char == "3") {
                    grid.addBlock(row: row, col: col, num: 3)
                } else if (char == "4") {
                    grid.addBlock(row: row, col: col, num: 4)
                }
                idx += 1
            }
        }
    }

}
