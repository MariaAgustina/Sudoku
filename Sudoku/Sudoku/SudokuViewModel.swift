//
//  SudokuViewModel.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 17/04/2025.
//

import Foundation

final class SudokuViewModel: ObservableObject {
    
    @Published var board: SudokuBoard
    
    init() {
  //     board[0][0].value = 5
  //      board[1][1].value = 3
        self.board = SudokuBoard()
    }
    
    
    

}
