//
//  ContentView.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ScrollView(.horizontal){
                LazyHStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Item \($0)")
                            .font(.title)
                    }
                }
                .frame(maxWidth:.infinity)
            }
        }
           
    }
}

#Preview {
    ContentView()
}
