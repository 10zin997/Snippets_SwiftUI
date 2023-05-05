//
//  ProgressBarCD.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct ProgressBarCD: View {
    @State private var remainingSeconds = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
           
            ProgressView(value: Double(remainingSeconds), total: 10.0)
                .progressViewStyle(LinearProgressViewStyle())
                
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


struct ProgressBarCD_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarCD()
    }
}
