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

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable{
        let name: String
        let role: String
    }
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
}



struct ContentView: View {
    let astronauts: [String: Astronaut] =  Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
     
    var body: some View{
        Text(String(astronauts.count))
            .onAppear {
                           print("Astronauts: \(astronauts)")
                       }
        
    }
   
}

#Preview {
    ContentView()
}
