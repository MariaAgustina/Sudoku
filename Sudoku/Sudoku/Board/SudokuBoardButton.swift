//
//  SudokuBoardButton.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 02/06/2025.
//

import SwiftUI

struct SudokuBoardButton: View {
    
    @ObservedObject var sudokuBoard: SudokuBoard
    var i: Int = 0
    var j: Int = 0

    var body: some View {
        VStack{
            Button("\(sudokuBoard.board[i][j])"){
                sudokuBoard.board[i][j] = 4
                sudokuBoard.printBoard()
                print("\(i)")
                print("\(j)")
            }
            .frame(width: 30, height: 30)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(10)
            .border(.black)
        }
    }
}

#Preview {
    //SudokuBoardButton(value: 1)
}
