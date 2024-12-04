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
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            let data = Data(input.utf8)
            if let user = try? JSONDecoder().decode(User.self, from: data){
                print(user.address.city)
                print(user)
                print(type(of:user))
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
