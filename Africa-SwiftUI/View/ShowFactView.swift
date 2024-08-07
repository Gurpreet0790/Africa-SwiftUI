//
//  ShowFactView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct ShowFactView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: BOX
    }
}

struct ShowFactView_Preview: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ShowFactView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
