//
//  SandCD.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct SandCD: View {
    @State private var remainingSeconds = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(Color.gray, lineWidth: 10)
                
                ForEach(0..<10) { index in
                    Image(systemName: "circle")
                        .foregroundColor(index < remainingSeconds ? .blue : .red)
                        .offset(y: -80)
                        .rotationEffect(.degrees(Double(index) * 36))
                }
            }
            .frame(width: 200, height: 200)
            
            Text("\(remainingSeconds)")
                .font(.system(size: 50))
        }
        .onReceive(timer) { _ in
            if remainingSeconds > 0 {
                remainingSeconds -= 1
            } else {
                timer.upstream.connect().cancel()
            }
        }
        .onAppear{
            remainingSeconds = 10
        }
    }
}


struct SandCD_Previews: PreviewProvider {
    static var previews: some View {
        SandCD()
    }
}
