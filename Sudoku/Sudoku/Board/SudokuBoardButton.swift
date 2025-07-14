//
//  SudokuBoardButton.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 02/06/2025.
//

import SwiftUI

struct SudokuBoardButton: View {
    
    @ObservedObject var sudokuBoard: SudokuBoard
    @State var backgroundButtonColor: Color = .white

    @Binding var positionX: Int
    @Binding var positionY: Int

    var i: Int = 0
    var j: Int = 0

    var body: some View {
        VStack{            
            Button(
                sudokuBoard.getButtonText(i: i, j: j)
            ){
                positionX = i
                positionY = j
                sudokuBoard.printBoard()
                backgroundButtonColor = .mint
            }
            .frame(width: 40, height: 40)
            .foregroundColor(.black)
            .background(backgroundButtonColor)
            .cornerRadius(10)
            .border(.black)
        }
    }
}

#Preview {
    //SudokuBoardButton(value: 1)
}
