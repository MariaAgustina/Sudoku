//
//  WelcomeView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 05/05/2025.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var level: String = "medio"
    @State private var currentBoard = SudokuBoard(level: "facil")
    @State private var presentSudokuBoardView = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing:20) {
                Text("Sudoku")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Image("welcomeSudoku")
                    .padding([.bottom, .top], 50)
                Button("Empezar a jugar") {
                    currentBoard = SudokuBoard(level: level)
                    presentSudokuBoardView = true
                 }
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color(red: 0, green: 100, blue: 0))
                .tint(.purple)
                .cornerRadius(10)
                NavigationLink(
                    destination: SudokuBoardView(sudokuBoard: currentBoard),
                    isActive: $presentSudokuBoardView
                ) {
                    EmptyView()
                }
                .frame(width: 0, height: 0, alignment: .center)
                .padding(0)
                

                NavigationLink("Ajustes") {
                    SettingsView(level: $level)
                }
                .frame(width: 300, height: 50, alignment: .center)
                .background(  Color(red: 0, green: 100, blue: 0))
                .tint(.purple)
                .cornerRadius(10)
                
                Text("Nivel seleccionado: " + level)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
