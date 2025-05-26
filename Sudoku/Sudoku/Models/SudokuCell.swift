//
//  SudokuCell.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 17/04/2025.
//

import Foundation

struct SudokuCell: Identifiable {
    let id = UUID()
    var value: Int?
    var positionX: Int?
    var positionY: Int?
}
