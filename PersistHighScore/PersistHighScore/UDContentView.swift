//
//  UDContentView.swift
//  PersistHighScore
//
//  Created by Tenzin wangyal on 2/15/23.
//

import SwiftUI

struct UDContentView: View {
   @State private var streak = 0
        @State private var highScore = UserDefaults.standard.integer(forKey: "highScore")

        var body: some View {
            VStack {
                Button("RESET Streak") {
                    streak = 0
                   
                }
                Button("RESET highscore") {
                    highScore = 0
                   
                }
                Text("High Score: \(highScore)")
                Text("Streak \(streak)")
                Button("Streak increase") {
                    streak += 1
                    if streak > highScore{
                        highScore = streak
                        UserDefaults.standard.set(highScore, forKey: "highScore")
                    
                    }
                    
                }
                //                Button("Increase Score") {
                //                    if streak > highScore{
                //                        highScore = streak
                //                    }
                //                        UserDefaults.standard.set(highScore, forKey: "highScore")
                //
            }
            }
    }


struct UDContentView_Previews: PreviewProvider {
    static var previews: some View {
        UDContentView()
    }
}
