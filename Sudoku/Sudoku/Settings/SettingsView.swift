//
//  SettingsView.swift
//  Sudoku
//
//  Created by Maria Agustina Markosich on 19/05/2025.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var level: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Configuración")
            Text("Elegí el nivel del juego")

            Button("Facil") {
                self.level = "facil"
                dismiss()
                print("seleccionó facil")
            }
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color(red: 0, green: 100, blue: 0))
            .tint(.purple)
            .cornerRadius(10)
            
            Button("Medio") {
                self.level = "medio"
                dismiss()
                print("seleccionó medio")
            }
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color(red: 0, green: 100, blue: 0))
            .tint(.purple)
            .cornerRadius(10)
            
            Button("Difícil") {
                self.level = "dificil"
                dismiss()
                print("seleccionó difícil")
            }
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color(red: 0, green: 100, blue: 0))
            .tint(.purple)
            .cornerRadius(10)
        }
        
    }
}

#Preview {
   // SettingsView(level: "facil")
}
