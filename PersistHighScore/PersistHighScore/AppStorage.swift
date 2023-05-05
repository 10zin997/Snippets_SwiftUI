//
//  ContentView.swift
//  PersistHighScore
//
//  Created by Tenzin wangyal on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @AppStorage ("highScore") var highscore = 0
    var body: some View {
        NavigationStack{
            VStack {
                Text("score \(score)")
                Text("Highscore \(highscore)")
                
                Button {
                    score += 1
                    updateHS()
                } label: {
                    Text("Increase points")
                }
                Button {
                    score = 0
                   
                } label: {
                    Text("Reset points")
                }
                Button {
                    highscore = 0
                   
                } label: {
                    Text("Reset Highscore")
                }
             

            

                
            }
            .padding()
            NavigationLink {
                Text("This is the new View")
                Text("Highscore \(highscore)")
                
            } label: {
                Text("Next View")
            }

        }
        .font(.title)
        .buttonStyle(.borderedProminent)
    }
    func updateHS(){
        if score > highscore{
            highscore = score
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


