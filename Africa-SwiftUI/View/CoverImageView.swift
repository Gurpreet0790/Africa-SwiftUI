//
//  CoverImageView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
