//
//  ContentView.swift
//  Toggle
//
//  Created by Tenzin wangyal on 4/19/23.
//

import SwiftUI
enum Mode {
    case light, dark, system
}

struct ContentView: View {
    @State private var mode: Mode = .light
    @State private var buttonText: String = "Light Mode"

    var body: some View {
        Button(action: {
            switch self.mode {
            case .light:
                self.mode = .dark
                self.buttonText = "Dark Mode"
            case .dark:
                self.mode = .system
                self.buttonText = "System Mode"
            case .system:
                self.mode = .light
                self.buttonText = "Light Mode"
            }
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
        .preferredColorScheme(mode == .system ? nil : (mode == .dark ? .dark : .light))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
