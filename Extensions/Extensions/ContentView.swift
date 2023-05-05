//
//  ContentView.swift
//  Extensions
//
//  Created by Tenzin wangyal on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          
            Text("Hello, worlddddddddddddd")
                .customText(color: .pink, size: 50, font: .title, weight: .bold, design: .monospaced)
                .lineLimit(1)
                .minimumScaleFactor(0.08)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Text {
    func customText(color: Color? = nil, size: CGFloat? = nil, font: Font? = nil, weight: Font.Weight? = nil,design: Font.Design? = nil) -> Text {
        var text = self

        if let color = color {
            text = text.foregroundColor(color)
        }

        if let size = size {
            text = text.font(.system(size: size))
        }

        if let font = font {
            text = text.font(font)
        }

        if let weight = weight {
            text = text.fontWeight(weight)
        }
        if let design = design{
            text = text.fontDesign(design)
        }
        return text
    }
}
