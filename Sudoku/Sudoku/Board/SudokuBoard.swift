//
//  SudokuBoard.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 26/05/2025.
//

import SwiftUI

final class SudokuBoard: ObservableObject {
    
    @Published var board: [[Int]] 
    
    init() {
        self.board = Array(repeating: Array(repeating: 0, count: 9), count: 9)
        self.load()
    }
    
    func load() {
        self.board[0][0] = 2
        self.board[0][2] = 5
        self.board[0][5] = 9
        self.board[0][8] = 4
        
        self.board[1][6] = 3
        self.board[1][8] = 7
        
        self.board[2][0] = 7
        self.board[2][3] = 8
        self.board[2][4] = 5
        self.board[2][5] = 6
        self.board[2][7] = 1
    }
    
    func printBoard() {
        print("[")
        for i in 0..<9 {
            var line = " [ "
            
            for j in 0..<9 {
                line += "(\(board[i][j]))"
                line += ","
            }
            line += " ] "
            print(line)
        }
        print("]")
    }
            
//   0: [[2,1,1,0,0,0,0,0,0],
//   1:  [0,0,0,0,0,0,0,0,0],
//   2:  [0,0,0,5,0,0,0,0,0],
//   3:  [0,0,0,0,0,0,0,0,0],
//   4:  [0,0,0,0,0,2,0,0,0],
//   5:  [0,0,0,0,0,0,0,0,0],
//   6:  [0,0,0,0,0,0,0,0,0],
//   7:  [0,0,0,0,0,0,0,0,0],
//   8:  [0,0,0,0,0,0,0,0,0] ]
    
}
