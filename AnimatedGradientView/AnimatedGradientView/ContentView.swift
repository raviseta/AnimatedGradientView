//
//  ContentView.swift
//  AnimatedGradientView
//
//  Created by Ravi Seta on 29/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animateGradient = false
    
    var body: some View {
        LinearGradient(
            colors: [Color.red, Color.blue, Color.orange], startPoint: animateGradient ? .topLeading : .bottomTrailing, endPoint: animateGradient ? .bottomTrailing : .topLeading
        )
        .ignoresSafeArea(.all)
        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: animateGradient)
        .onAppear {
            animateGradient.toggle()
        }
    }
}

#Preview {
    ContentView()
}
