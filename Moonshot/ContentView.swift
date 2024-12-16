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
    let columns = [GridItem(.adaptive(minimum: 150))]
    var body: some View{
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 100){
                    ForEach(missions){ mission in
                        NavigationLink{
                            MissionView(mission: mission, astronauts: astronauts)
                        }
                        label:{
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:100, height:100)
                                    .padding()
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(RoundedRectangle(cornerRadius:10).stroke(.lightBackground))
                            
                                
                        }
                    }
                }.padding([.horizontal, .bottom])
            }
            .padding(.top, 50)
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
        
        
    }
   
}

#Preview {
    ContentView()
}
