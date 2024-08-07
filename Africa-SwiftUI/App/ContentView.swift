//
//  ContentView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListView(animal: animal)
                    }//: LINK
                }//: For Each
            }//: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//: Navigation View
       
    }
}

#Preview {
    ContentView()
}
