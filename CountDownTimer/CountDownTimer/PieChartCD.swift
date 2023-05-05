//
//  PieChartCD.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct PieChartCD: View {
    @State private var remainingSeconds = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ZStack {
                Pie(startAngle: Angle.degrees(0), endAngle: Angle.degrees(Double(remainingSeconds) / 10.0 * 360.0))
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                
                Circle()
                    .stroke(Color.gray, lineWidth: 10)
                    .frame(width: 200, height: 200)
                
                Text("\(remainingSeconds)")
                    .font(.system(size: 50))
            }
            
            Text("Remaining")
                .font(.headline)
                .padding()
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

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        path.move(to: center)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.closeSubpath()
        
        return path
    }
}


struct PieChartCD_Previews: PreviewProvider {
    static var previews: some View {
        PieChartCD()
    }
}
