//
//  ContentView.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(0..<100, id: \.self){ row in
                NavigationLink("Row \(row)"){
                    Text("Detail \(row)")
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
