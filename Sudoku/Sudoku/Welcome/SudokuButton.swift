//
//  SudokuButton.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 19/05/2025.
//

import SwiftUI

struct SudokuContentButton: View {
    var body: some View {
        NavigationLink("Empezar a jugar") {
        }
        .frame(width: 300, height: 50, alignment: .center)
        .background(Color(red: 0, green: 100, blue: 0))
        .tint(.purple)
        .cornerRadius(10)
    }
}

#Preview {
    SudokuContentButton()
}
