//
//  ContentView.swift
//  MultiColor
//
//  Created by Tenzin wangyal on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.red, Color.blue, Color.green, Color.yellow]
    @State private var colorIndex = 0
    @State private var isAnimating = false

    var body: some View {
        Text("Throbbing Text")
            .font(.headline)
            .foregroundColor(colors[colorIndex])
            .animation(
                Animation.easeInOut(duration: 1.5)
                    .repeatForever(autoreverses: true)
            )
            .onAppear {
                self.isAnimating = true
                self.startAnimation()
            }
    }

    private func startAnimation() {
        withAnimation {
            self.colorIndex = (self.colorIndex + 1) % self.colors.count
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if self.isAnimating {
                self.startAnimation()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
