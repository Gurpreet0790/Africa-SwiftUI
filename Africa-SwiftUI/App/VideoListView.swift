//
//  VideoListView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct VideoListView: View {
    @State var showAlert: Bool = false
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            FooterView(showCallAlert: $showAlert)
                .alert(isPresented: $showAlert){
                    Alert(
                    title: Text("Success"),
                    message: Text("Wisshing you a speedy recoovery"),
                    dismissButton: .default(Text("Good Job")))
                }
            
        }
    }
}

#Preview {
    VideoListView()
}
