//
//  ContentView.swift
//  ApiFetch
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI


struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
struct ContentView: View {
    @ObservedObject var viewModel = DataVM()
    
    var body: some View {
        List(viewModel.todos, id: \.id) { todo in
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.headline)
                Text("Completed: \(todo.completed ? "Yes" : "No")")
                    .font(.subheadline)
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

class DataVM: ObservableObject {
    @Published var todos = [Todo]()
    
    func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode([Todo].self, from: data)
                DispatchQueue.main.async {
                    self.todos = decodedData
                }
            } catch {
                print("Error: \(error)")
            }
        }
            dataTask.resume()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
