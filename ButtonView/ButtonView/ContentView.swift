//
//  ContentView.swift
//  ButtonView
//
//  Created by Tenzin wangyal on 4/21/23.
//
import SwiftUI

struct ContentView: View {

    @State var tapped = 0
    var body: some View {
        VStack {
            Button {
                tapped += 1
            } label: {
                    Text("Press \(tapped) times")
                  
                    .frame(width: 300, height: 100, alignment: .center) //frame must be directly modifying the text
                    .padding()
                    .background(Color.orange)
                 
            }
            .contentShape(Rectangle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
