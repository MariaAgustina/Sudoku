//
//  SudokuBoardView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 26/05/2025.
//

import SwiftUI

struct SudokuBoardView: View {
    
    @ObservedObject var sudokuBoard: SudokuBoard
    
    @State var positionX: Int = 0
    @State var positionY: Int = 0
        
    init(
        sudokuBoard: SudokuBoard,
        positionX: Int = 0,
        positionY: Int = 0
    ) {
        self.sudokuBoard = sudokuBoard
        self.positionX = positionX
        self.positionY = positionY
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Sudoku")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            ForEach(0...8, id: \.self) { i in
                HStack(spacing: 0){
                    ForEach(0...8, id: \.self) { j in
                        SudokuBoardButton(
                            sudokuBoard: sudokuBoard,
                            positionX: $positionX,
                            positionY: $positionY,
                            i: i,
                            j: j
                        )
                    }
                }
            }
            HStack{
                ForEach(1...9, id:  \.self) { i in
                    Button("\(i)"){
                        sudokuBoard.board[positionX][positionY] = i
                    }
                    .frame(width: 30, height: 40)
                    .foregroundColor(.blue)
                    .background(.white)
                    .cornerRadius(10)
                    .border(.black)
                }
            }.padding(.top, 30)
            
        }.padding()
        
    }
}

#Preview {
    SudokuBoardView(sudokuBoard: SudokuBoard(level: "facil"))
}

//2. Líneas más gruesas para marcar los recuadros de 3x3
//3. Ir felicitando al usuario a medida que vaya completando cuadrados
//5. Decirle al usuario si ganó
//6. Decirle al usuario si cometió un error.
