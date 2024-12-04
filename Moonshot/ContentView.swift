//
//  ContentView.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/3/24.
//

import SwiftUI

struct User: Codable{
    let name : String
    let address: Address
}

struct Address: Codable{
    let street: String
    let city: String
    
}

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 30)),
    ]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
        
    
           
    }
}

#Preview {
    ContentView()
}


//NavigationStack {
//    List(0..<100) { row in
//        NavigationLink("Row \(row)") {
//            Text("Detail \(row)")
//        }
//    }
//    .navigationTitle("SwiftUI")
//}
