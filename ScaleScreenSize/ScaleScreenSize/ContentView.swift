//
//  ContentView.swift
//  ScaleScreenSize
//
//  Created by Tenzin wangyal on 2/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.teal.ignoresSafeArea(.all)
            
            VStack {
                ForEach(0 ..< 5 ,  id : \.self){ index in
                    GeometryReader { geo in
                        Image("Icon")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                        //                        .scaledToFit()
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    Text("Hello")
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .leading)
                    }
                    .padding()
                    
                }
                Spacer()
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
