//
//  ContentView.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                SimpleCD()
                    .tabItem{
                        Label("Simple", systemImage: "list.number")
                    }
                CircularCD()
                    .tabItem{
                        Label("Circular", systemImage: "10.circle")
                    }
                ProgressBarCD()
                    .tabItem{
                        Label("Progress", systemImage: "cable.connector.horizontal")
                    }
                SandCD()
                    .tabItem{
                        Label("Sand", systemImage: "circle.dotted")
                    }
                PieChartCD()
                    .tabItem{
                        Label("Pie", systemImage: "chart.pie.fill")
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

