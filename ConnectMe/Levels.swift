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
       "__211__2_________________",
       "______2___2_____1____1___",
//       "___2____1_3_________1___1",
//       "1331_2____2______________",
//       "__12_322_3_____3_________",
//       "______212_12____312______",
//       "_____12____1_33__323__2__",
//       "__1__32____3____1232___32",
//       "__2_23_32____4___2_3133__",
//       "_3_2_2_21___324__2__31__3",
//       "_2___12___224_3_33_43__23",
//       "_3_23332__2_3_3_43____111",
//       "_2233___3_3322___211__131",
//       "3332_2__3441_2_31_323__3_",
//       "3__24__22323_432_43_12_44",
//       "1_33232_4_4_3314234332___",
//       "134_3332342_223__11__3323",
//       "3_144344334324322_2__342_",
//       "421333322_433333_22_4_444",
    ]
    
    static var lastUnlocked: Int = 1

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
        grid.updateNeighbors()
    }

}
