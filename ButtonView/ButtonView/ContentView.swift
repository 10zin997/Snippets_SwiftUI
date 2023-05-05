//
//  ContentView.swift
//  ButtonView
//
//  Created by Tenzin wangyal on 4/21/23.
//
import SwiftUI

struct ContentView: View {
    @State var pressed = false
    var body: some View {
        VStack {
            Button {
                pressed.toggle()
            } label: {
                    Text("Press Me")
            }
            .frame(width: 200, height: 100, alignment: .center)
            .background(Color.orange)
            .contentShape(Rectangle())
            .allowsHitTesting(true) // make sure the button can receive touch events
            
            Text(pressed ? "pressed" : "not pressed" )
        }
        .padding()
        .background(Color.clear) // make sure the background is not blocking touch events
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
