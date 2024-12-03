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
            Image("duke")
                .resizable()
                .scaledToFit()
                .containerRelativeFrame(.horizontal){ size, axis in
                    size * 0.5
                }
        }
           
    }
}

#Preview {
    ContentView()
}
