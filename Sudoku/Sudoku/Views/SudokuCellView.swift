//
//  SudokuCellView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 17/04/2025.
//

import Foundation
import SwiftUI

struct SudokuCellView: View {
    let cell: SudokuCell
    
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(Color.black, lineWidth: 1)
                .background(Color.white)
            
            if let value = cell.value {
                Text("\(value)")
                    .font(.headline)
            }
        }
        .frame(width: 35, height: 35)
    }
}
