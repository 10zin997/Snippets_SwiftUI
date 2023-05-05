//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Tenzin wangyal on 4/6/23.
//

import SwiftUI
import Lottie
import UIKit

struct ContentView: View {
    var body: some View {
        ZStack{
            
            VStack {
                
                LottieView()
                    .ignoresSafeArea()
                    .scaledToFill()
                    
                
                
            }
        }
      
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

