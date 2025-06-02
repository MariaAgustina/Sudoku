//
//  SudokuBoardView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 26/05/2025.
//

import SwiftUI

struct SudokuBoardView: View {
    
    @ObservedObject var sudokuBoard: SudokuBoard = SudokuBoard()
    
    var body: some View {
        VStack {
            Text("Sudoku")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            ForEach(0...8, id: \.self) { i in
                HStack{
                    ForEach(0...8, id: \.self) { j in
                        SudokuBoardButton(
                            sudokuBoard: sudokuBoard,
                            i: i,
                            j: j
                        )
                    }
                }
            }
        }.padding()
        
    }
}

#Preview {
    SudokuBoardView()
}
