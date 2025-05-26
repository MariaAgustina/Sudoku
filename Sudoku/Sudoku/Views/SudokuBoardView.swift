//
//  SudokuBoardView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 17/04/2025.
//

import SwiftUI

struct SudokuBoardView: View {
    @StateObject private var viewModel = SudokuViewModel()
    
    var body: some View {
        VStack(spacing: 1) {
            ForEach(0..<viewModel.board.rowsCount, id: \.self) { row in
                HStack(spacing: 1) {
                    ForEach(0..<viewModel.board.columnsCount, id: \.self) { column in
                        let cell = viewModel.board.board[row][column]
                        SudokuCellView(cell: cell)
                    }
                }
            }
        }
        .padding()
    }
}


#Preview {
    SudokuBoardView()
}
