//
//  Cell.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/24/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
// grid contains 5*5 cells
class Cell {
    // cell parameters
    let row : Int
    let col : Int
    // initialise cell's parameters
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
    }
    // if let leftBlock = self.findBlock (row: Int(rc.y - 1), col: Int(rc.x)) {
    func left () -> Cell {
    return Cell(row: row , col: col - 1)
    }
    
    func right () -> Cell {
    return Cell(row: row , col: col + 1)
    }
    
    func up () -> Cell {
        return Cell(row: row - 1, col: col )
    }
   
    func down () -> Cell{
        return Cell (row: row + 1, col: col)
    }
}

