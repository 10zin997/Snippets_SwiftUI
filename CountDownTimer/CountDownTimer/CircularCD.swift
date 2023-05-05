//
//  CircularTimer.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct CircularCD: View {
    @State private var remainingSeconds = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            Group{
                Circle()
                    .stroke(lineWidth: 15)
                    .fill(.gray)
                Text("\(remainingSeconds)")
                    
                Circle()
                    .trim(from: 0.0, to: CGFloat(remainingSeconds)/10)
                
                    .stroke(Color.blue, lineWidth: 10)
                   
                    .rotationEffect(.degrees(-90))
                    
            }
            .padding()
            .onReceive(timer) { _ in
                if remainingSeconds > 0{
                    remainingSeconds -= 1
                }else{
                    timer.upstream.connect().cancel()
                }
            }
          
            
        }
        .onAppear{
            remainingSeconds = 10
        }
    }
}

struct CircularCD_Previews: PreviewProvider {
    static var previews: some View {
        CircularCD()
    }
}
