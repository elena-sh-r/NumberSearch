//
//  ContentView.swift
//  NumberSearch
//
//  Created by Elena Sharipova on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var gameManager = GameManager()
    @State private var showingAlert = false
    
    var body: some View {
        VStack(spacing: 35) {
            SliderView(
                currentValue: $gameManager.numberGame.currentValue,
                targetValue: gameManager.numberGame.targetValue,
                alpha: gameManager.numberGame.score
            )
            
            Button("Проверь меня!") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Your score"),
                    message: Text("\(gameManager.numberGame.score)"),
                    dismissButton: .default(Text("OK"))
                )
            }
            
            Button("Начать заново") {
                gameManager.updateTargetValue()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
