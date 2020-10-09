//
//  RoundedButton.swift
//  SwiftUIPlay
//
//  Created by Shootr on 09/10/2020.
//

import Foundation
import SwiftUI

struct CustomButton: View {

    @State var bColor = Color.orange
    var text: String
    var action: () -> Void

    var body: some View {
//        Button(action: action, label: {
//            Text(text)
//        })
        Button(action: {
            print("Tapped")
        }) {
            Text(text.uppercased()).font(.title)
        }
        .foregroundColor(.white)
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        .background(bColor)
        .border(Color.black, width: 1)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Activate", action: { print("Pressed") })
    }
}
