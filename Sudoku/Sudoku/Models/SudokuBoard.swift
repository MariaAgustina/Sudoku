//
//  SudokuBoard.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 17/04/2025.
//

import Foundation

protocol SudokuBoardProtocol {
    var rowsCount: Int { get }
    var columnsCount: Int { get }
    var divider: Int { get }
    var board: [[SudokuCell]] { get }
    func create() -> [[SudokuCell]]
}

final class SudokuBoard: SudokuBoardProtocol{
    
    var board: [[SudokuCell]] = [[]]
    let rowsCount: Int
    let columnsCount: Int
    let divider: Int
    
    init(rows: Int = 9, columns: Int = 9, divider: Int = 3) {
        self.rowsCount = rows
        self.columnsCount = columns
        self.divider = divider
        self.board = create()
    }
    
    func create() -> [[SudokuCell]] {
        var arrayX = Array<Array<SudokuCell>>()
        for x in 0..<self.rowsCount {
            var arrayY = Array<SudokuCell>()
            for y in 0..<self.columnsCount {
                let cell = SudokuCell(value: 0, positionX: x, positionY: y)
                arrayY.append(cell)
            }
            arrayX.append(arrayY)
        }
        return arrayX
    }

}
