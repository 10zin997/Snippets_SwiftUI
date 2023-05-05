//
//  SwiftUIView.swift
//  SwiftUIinUIKIT
//
//  Created by Tenzin wangyal on 5/1/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State var btnPressed = false
    var body: some View {
        VStack{
            Text("This is the SwiftUI View")
            Button {
                btnPressed.toggle()
                
            } label: {
                Text("Go To UIKit")
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
