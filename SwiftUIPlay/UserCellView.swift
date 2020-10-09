//
//  UserCellView.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI


struct UserCellView: View {

    var user: User

    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            ImageViewContainer(imageURL: user.url)
                .scaleEffect(0.9)
                .padding(.leading, 10)
            VStack(alignment: .leading, spacing: 0, content: {
                Text(user.name)
                    .font(.system(size: 32, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                Text(user.status)
                    .font(.system(size: 18, weight: .light, design: .rounded))
            }).padding(.leading, 20)
            Spacer()
            Button(action: {
                print("Edit button was tapped")
            }) {
                Image(systemName: "paperplane")
                    .font(.system(size: 30, weight: .light))
            }.padding(.trailing, 15)
        })
        .frame(height: 100)
        .background(Color.init(UIColor.white).opacity(0.5))
        .cornerRadius(10)
        .padding()
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        let user = Datasource.load().first
        UserCellView(user: user!)
            .background(Color.red)
    }
}
