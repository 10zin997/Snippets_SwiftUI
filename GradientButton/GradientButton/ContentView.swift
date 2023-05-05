//
//  ContentView.swift
//  GradientButton
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    let onImage: String
    let offImage: String
    
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            Image(systemName: configuration.isOn ? onImage : offImage)
                .font(.system(size: 20))
                .foregroundColor(configuration.isOn ? .green : .gray)
        }
    }
}

struct ContentView: View {
    @State private var isToggled = false
    
    var body: some View {
        Toggle(isOn: $isToggled) {
            Text("Custom Toggle")
        }
        .toggleStyle(CustomToggleStyle(onImage: "checkmark.circle.fill", offImage: "xmark.circle.fill"))
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
