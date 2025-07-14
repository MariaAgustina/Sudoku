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
            .overlay( //borde superior
                Group {
                    if i == 0 || i == 3 || i == 6 {
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.black)
                    }
                },
                alignment: .top
            )
            .overlay( //borde inferior
                Group {
                    if i == 2 || i == 5 || i == 8 {
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.black)
                    }
                },
                alignment: .bottom
            )
            .overlay( //borde izquierdo
                Group {
                    if j == 0 || j == 3 || j == 6 {
                        Rectangle()
                            .frame(width: 4)
                            .foregroundColor(.black)
                    }
                },
                alignment: .leading
            )
        }
    }
}

#Preview {
    //SudokuBoardButton(sudokuBoard: SudokuBoard(level: "facil"), positionX: 0, positionY: 0)
}
