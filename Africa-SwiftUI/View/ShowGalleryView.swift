//
//  ShowGalleryView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct ShowGalleryView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }// For Each
            } // HStack
        }// Scroll View
    }
}

struct ShowGalleryView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    
    static var previews: some View {
        ShowGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
