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


       "_________1__1____________", // old
       "__211__2_________________",  // old
       "______2___2_____1____1___",  // old
        "__________3_____11__1____",
       "___2____1_3_________1___1",  // old
       "1331_2____2______________",  // old
        "___2_____3________2___1_2",
        "_________1______11____23_",
        "__________21_____2_____21",
        "__2__3_21_______1_____1__",

        "____1_121__3___________2_",
        "____2_____1__2_2_2_____3_",
        "12___2_3____2___1_______3",
        "2_________32_2___212_____",
        "__________2___322__11___3",
        "_________22__1__2_1_123__",
        "_4__2__22___1____3__1_1__",
        "___2______2__1223___2__2_",
        "3____3_2_2____12__1_2__2_",
        "_2_2____2_12__22_3_____2_",
        
        "_4___3_122_123__3_1__4___",
        "_1__2212__22_2_123_______",
        "_312_4_3_32__2_33_2______",
        "1__33__2_2_13_3___3_2__1_",
        "21____1__3___22__3__22_22",
        "33____24____4__23_32__321",
        "3______223__32__32_3324__",
        "_1_3_____1_3223_3_1___313",
        "4_2___21_33____2_3122_3__",
        "_13_12_22_3__33____32_3__",
        
        "1__1_____2__4___213_1__1_",
        "_34__2321____3__33_____2_",
        "__12_322_3_____3_________", // old
        "______212_12____312______", // old
        "_____12____1_33__323__2__", // old
        "__1__32____3____1232___32", // old
        "_3_23332__2_3_3_43____111", // old
        "_2233___3_3322___211__131",  // old
        "_312_21_3_4_________332__",
        "_3_2_2_21___324__2__31__3", // old

       
        "_323_142____23_3_33_3___4",
        "_4__3___13_13_1_3_223__42",
        "33_4___31___1_32__3311_2_",
        "_31___312__2_232__212_2__",
        "_133____2__31_2__222_23_2",
        "__4___3_3__1_23232334_3_2",
        "___1423___34_4__33_21112_",
        "__4423___2___423_2_2123_4",
        "432__311__2____32_2_322_2",
        "____33_3__32223_2_22__311",
        
        
        "__2_3__42_2_4_32241342_2_",
        "42__2_____221_3_3414_2442",
        "1___243333__2_3_34__1332_",
        "4_2122___3_13___2_34343_3",
        "432_3242343_1__21____33__",
        "21__13__422243_4_2_34_43_",
        "3_122__4__43313_23__1_442",
        "2_3_22____144_433__323231",
        "4232_212_2_334_343_3___1_",
        "243___4_1_23212_33__13_33",


       "_2___12___224_3_33_43__23", // old
        "___33____32___2_1_332_4__",
        "_3_13___3__24_2___31__22_",
        "33_____22_13__1__2_3_4__2",
        "41____3__3222_4_3_2___2__",
        "_2_____2_____3323_34231_2",
        "__2_23_32____4___2_3133__", // old
       "3332_2__3441_2_31_323__3_", // old
        "3__24__22323_432_43_12_44", // old
        "1_33232_4_4_3314234332___", // old


       "134_3332342_223__11__3323", // old
       "3_144344334324322_2__342_", // old
       "421333322_433333_22_4_444", // old
        "____24_3334__42___212___2",
        "____23__23__34__12422_2__",
        "_3_242__222__13__33__1_2_",
        "22___31___3223_1__44_1_2_",
        "_2___23_32231_212_34_____",
        "___2_____234223__1132_221",
        "__4_232_333__3_32___223_1",
        
        
        "___11_13_1_3__4223__3334_",
        "_2__43_32_4_____123321231",
        "__4_2_3142__333__23223_3_",
        "313222__1___4_3322___323_",
       "2_3__43_2_2_2_323433_242_",
        "_22434_31___32_2_3_3342_3",
        "_4322__3_22_41323__3134__",
        "31_322_4333___231_1_3_334",
        "34_2_33_3231233__1_32_4_4",
        "413_12___2211423_2324___3",


        "22433_43432___43_21_343_2",
        "_3_13_432_213_2333343_41_",
        "33343__3_22_3442_34_223_4",
        "4_23_1422__334_42322343_3",
        "4_4232234_433_23_432_31_2",
        "32_3222_3_42_244243432_3_",
        "12323___143233_2314323_43",
        "3_133332_13_3_2341311_334",
       "_33311_3443_2_4_322324232",
       "3_2333323_423_12_13333124",

//        "2322123233334__43243432__",
//        "_43322_232223313_13_42443",
    ]
    
    static var lastUnlocked: Int = 1

    static func loadSavedGame() {
        let lastUnlocked = UserDefaults.standard.integer(forKey: "lastUnlocked")
        print("Last Level: \(lastUnlocked)")
        Levels.lastUnlocked = max(lastUnlocked, Levels.lastUnlocked)
        GameScene.currentLevel = Levels.lastUnlocked
    }

    static func updateLastUnlocked(currentLevel: Int) {
        if (currentLevel > Levels.lastUnlocked) {
            Levels.lastUnlocked = currentLevel
            UserDefaults.standard.set(currentLevel, forKey: "lastUnlocked")
        }
    }
    
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
