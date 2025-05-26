//
//  WelcomeView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 05/05/2025.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var level: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing:20) {
                Text("Sudoku")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Image("welcomeSudoku")
                    .padding([.bottom, .top], 50)
                NavigationLink("Empezar a jugar") {
                    SudokuBoardView()
                }
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color(red: 0, green: 100, blue: 0))
                .tint(.purple)
                .cornerRadius(10)
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
