//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by 1 on 15/06/21.
//

import Foundation

extension Bundle {
    func decode<T : Codable>(_ file : String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(url) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(data) from bundle.")
        }
        
        return decodedData
    }
}
