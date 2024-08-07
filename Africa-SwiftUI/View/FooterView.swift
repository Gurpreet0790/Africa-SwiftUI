//
//  FooterView.swift
//  Africa-SwiftUI
//
//  Created by ReetDhillon on 2024-08-06.
//

import SwiftUI

struct FooterView: View {
    @Binding var showCallAlert: Bool
    var body: some View {
        HStack{
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action:
                    {
                print("Success!")
                self.showCallAlert.toggle()
            }, label: {
                Text("Call Safety House".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
          
            
            
        }//: HStack
    }
}

//#Preview {
//    FooterView(showCallAlert: false)
//}

struct FooterView_Preview: PreviewProvider {

    static var previews: some View {
        @State var showAlert: Bool = false

        FooterView(showCallAlert: $showAlert)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
