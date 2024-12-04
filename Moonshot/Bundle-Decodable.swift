//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Namgyal Thily on 12/4/24.
//

import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to locate \(file)")
        }
        guard let data = try? Data(contentsOf: url) else{
            fatalError("failed to load \(file)")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else{
            fatalError("failed to decode \(file)")
        }
        return loaded
    }
}
