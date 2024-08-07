//
//  CodableBundleExtension.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        
        //1.Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        print("data is\(data)")
        //3.Create a decoder
        let decoder = JSONDecoder()
        
        //4.Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle")
        }
        print("loaded data is \(loaded)")
        //5. Return the ready-to-use data
        return loaded
    }
}
