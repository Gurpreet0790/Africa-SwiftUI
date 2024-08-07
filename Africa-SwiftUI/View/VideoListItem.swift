//
//  VideoListItem.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct VideoListItem: View {
    //MARK: - PROPERTIES
    let video : VideoModel
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }//: ZStack
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }//: VStack
        }//: HStack
    }
}

//#Preview {
//    let videos: [VideoModel] = Bundle.main.decode("videos.json")
//    VideoListItem(video: videos[0])
//}

struct VideoListItem_Preview: PreviewProvider {
    static let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
