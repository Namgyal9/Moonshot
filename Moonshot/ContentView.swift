//
//  ContentView.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/3/24.
//

import SwiftUI

struct Astronaut: Codable, Identifiable{
    let id: String
    let name: String
    let description: String
}



struct ContentView: View {
    let astronauts =  Bundle.main.decode("astronauts.json")
    
    var body: some View{
        Text(String(astronauts.count))
        
    }
   
}

#Preview {
    ContentView()
}
