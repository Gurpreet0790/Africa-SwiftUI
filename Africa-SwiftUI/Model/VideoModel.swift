//
//  VideoModel.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct VideoModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
