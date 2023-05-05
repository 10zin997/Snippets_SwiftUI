//
//  ContentView.swift
//  ButtonInsideTextField
//
//  Created by Tenzin wangyal on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            VStack {
                TextField("Enter text", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                    .overlay(
                        Button(action: {
                            // Button action
                        }, label: {
                            Image(systemName: "paperclip")
                                .foregroundColor(.gray)
                        })
                        .padding(.leading, 25)
                        .frame(width: 32, height: 32)
                        , alignment: .leading
                    )
                
                // Other views
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
