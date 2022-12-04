//
//  Codable+Extension.swift
//  Football
//
//  Created by Shubham Kumar on 04/12/22.
//

import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file: \(file) in Bundle!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file: \(file) from Bundle")
        }
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to Decode data from File: \(file)")
        }
        return decodedData
    }
}
