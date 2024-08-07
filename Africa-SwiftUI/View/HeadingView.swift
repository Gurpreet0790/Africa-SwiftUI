//
//  HeadingView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Preview: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
