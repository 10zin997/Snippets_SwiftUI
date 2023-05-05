//
//  ContentView.swift
//  SwitchBG
//
//  Created by Tenzin wangyal on 2/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var switchBG = false
   
    var body: some View {

            ZStack{
                Image(switchBG ? "2" : "1")
                    .resizable().ignoresSafeArea(.all)
                    .animation(.easeIn(duration: 0.8), value: switchBG)
                
                VStack{
                    Spacer()
                    Button {
                        switchBG.toggle()
                    } label: {
                        Text("Switch BG")
                    }
                    .buttonStyle(.borderedProminent)

                }
                
                
                
            }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
