//
//  SudokuGameStatus.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 12/05/2025.
//

import Foundation

struct SudokuGameStatus {
    
    func isValid(array: [Int]) -> Bool {
        for index in 1...9 {
            if countNumbers(array: array, number: index) > 1 {
                return false
            }
        }
        return true
    }
    
    func countNumbers(array: [Int], number: Int) -> Int {
        var counter = 0
        for element in array {
            if element == number {
                counter += 1
            }
        }
        return counter
    }
}
