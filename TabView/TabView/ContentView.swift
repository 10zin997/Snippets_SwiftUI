//
//  ContentView.swift
//  TabView
//
//  Created by Tenzin wangyal on 2/20/23.
//

import SwiftUI


struct ContentView: View {
    
@State private var selection = 0
    var body: some View {
        
        NavigationView {
            ZStack{
                
                TabView(selection: $selection) {
                    
                    List(1...10, id: \.self) { index in
                        NavigationLink(
                            destination: Text("Item #\(index) Details"),
                            label: {
                                Text("Item \(index)")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                            })
                        
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                    
                    Text("Bookmark Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "bookmark.circle.fill")
                            Text("Bookmark")
                        }
                        .tag(1)
                    
                    Text("Video Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "video.circle.fill")
                            Text("Video")
                        }
                        .tag(2)
                    
                    Text("Profile Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                        .tag(3)
                }
                .navigationBarTitle("VIEW")
                .accentColor(.red)
            }
        }
      
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
