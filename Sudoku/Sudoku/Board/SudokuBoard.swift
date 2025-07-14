//
//  SudokuBoard.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 26/05/2025.
//

import SwiftUI

final class SudokuBoard: ObservableObject {
    typealias Position = (Int, Int)
    
    @Published var board: [[Int]]
    var level: String = "facil"
    
    init(level: String) {
        self.board = Array(repeating: Array(repeating: 0, count: 9), count: 9)
        self.level = level
        self.load()
    }
    
    func load() {
        let number = Int.random(in: 1...4)
        let nameFile = level.lowercased() + "-" + String(number)
        
        guard let path = Bundle.main.path(forResource: nameFile, ofType: "csv") else {
            print("Archivo no encontrado.")
            return
        }
        
        print("Archivo cargado: \(nameFile)")
        
        do {
            let data = try String(contentsOfFile: path)
            let lines = data.components(separatedBy: .newlines)
            for line in lines {
                let components = line.split(separator: ",")
                print(components)
                if components.count == 3 {
                    let positionX: Int = Int(components[0]) ?? 0
                    let positionY: Int = Int(components[1]) ?? 0
                    let value: Int = Int(components[2]) ?? 0
                    self.board[positionX][positionY] = value
                }
            }
        } catch {
            print("Error al leer el archivo: \(error)")
        }

    }
    
    func getButtonText(i: Int, j: Int) -> String {
        if board[i][j] == 0 {
            return " "
        }
        return "\(board[i][j])"
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
