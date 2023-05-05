//
//  ContentView.swift
//  EditText
//
//  Created by Tenzin wangyal on 2/22/23.
//

import SwiftUI

struct EditableTextView: View {
//    @State private var isEditing = false
//    @State private var counter = 0
    @State private var text = "Tap to Edit"
    @State private var fruits = ["Apple", "Banana", "Orange", "Strawberry", "Blueberry", "Grape", "Pineapple"]

    var body: some View {
        ZStack{
            Color.mint.edgesIgnoringSafeArea(.all)
            VStack{
                List {
                    ForEach(fruits.indices, id: \.self) { index in
                        TextField("Enter item", text: $fruits[index])
                     
                    }
                }
                .scrollContentBackground(.hidden)
                HStack{
                
                }
            }
           }
        }
    }


struct EditableTextView_Previews: PreviewProvider {
    static var previews: some View {
        EditableTextView()
    }
}
