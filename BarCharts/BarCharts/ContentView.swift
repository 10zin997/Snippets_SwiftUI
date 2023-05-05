//
//  ContentView.swift
//  BarCharts
//
//  Created by Tenzin wangyal on 2/22/23.
//



import SwiftUI
import Charts

struct ContentView: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [ 10531, 6019, 7200, 8311, 7403, 6503, 9230]

    var body: some View {
        Chart {
            ForEach(weekdays.indices, id: \.self) { index in
                //vertical
//                BarMark(x: .value("Day", weekdays[index]),
//                        y: .value("Steps", steps[index]))
//                horizontal - just flip the values
                BarMark(x: .value("Steps", steps[index]),
                        y: .value("Day", weekdays[index]))

                    .foregroundStyle(by: .value("Day", weekdays[index]))
                    .annotation(position: .overlay, alignment: .center, spacing: 10) {
                        Text("\(steps[index])")
                           
                    }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
  }
}
