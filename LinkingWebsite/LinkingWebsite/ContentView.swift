//
//  ContentView.swift
//  LinkingWebsite
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ///Link to apple site
            Link("Apple", destination: URL(string: "https://www.apple.com")!)
            
            ///Link to twitter site
            Link("Twitter", destination: URL(string: "https://www.twitter.com")!)
            
            ///Link to google site
            Link("Google", destination: URL(string: "https://www.google.com")!)
            ///Link to youtube site
            Link("Youtube", destination: URL(string: "https://www.youtube.com")!)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
