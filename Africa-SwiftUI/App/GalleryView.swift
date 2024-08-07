//
//  GalleryView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct GalleryView: View {
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyVGrid(columns: gridLayout,alignment: .center, spacing: 10 ){
                ForEach(0..<5){
                    item in
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
    }
}

#Preview {
    GalleryView()
}
