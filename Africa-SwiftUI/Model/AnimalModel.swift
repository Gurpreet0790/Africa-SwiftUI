//
//  AnimalModel.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct Animal: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery : [String]
    let fact: [String]
}
