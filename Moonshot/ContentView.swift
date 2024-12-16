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
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String{
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }
    var formattedLaunchDate: String{
        let temp = launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
        print(type(of:temp)) // just to check whether output is non optional or optional
        return temp
        
    }
    
}



struct ContentView: View {
    let astronauts: [String: Astronaut] =  Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @State private var showingGrid = false
    var body: some View{
        NavigationStack{
            ScrollView{
                if showingGrid{
                    GridLayout(astronauts: astronauts, missions: missions)
                    
                }
                else{
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .padding(.top, 50)
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Mode"){
                        showingGrid.toggle()
                    }
                }
            }
        }
        
        
    }
   
}

#Preview {
    ContentView()
}
