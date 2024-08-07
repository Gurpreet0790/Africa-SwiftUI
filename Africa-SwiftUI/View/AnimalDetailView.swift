//
//  AnimalDetailView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - Properties
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false)
        {
            VStack(alignment: .center, spacing: 20){
                //Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accent)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    
                //GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
                    
                    ShowGalleryView(animal: animal)
                }
                
                //FACTS
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    ShowFactView(animal: animal)
                } //: Group
                .padding(.horizontal)
                
                
                //DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about\(animal.name)")
                    
                    Text(animal.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)            //MAP
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks about\(animal.name)")
                    
                    ShowMapView()
                }// : Group
                //LINK
                
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                
                
            }//: VStack
            .navigationBarTitle("Learn about\(animal.name)", displayMode: .inline)
        }//:ScrollView
    }
}

struct AnimalDetailView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalDetailView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
