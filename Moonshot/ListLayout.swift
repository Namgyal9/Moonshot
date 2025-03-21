//
//  ListLayout.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/16/24.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    var body: some View {
        LazyVStack{
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
}


