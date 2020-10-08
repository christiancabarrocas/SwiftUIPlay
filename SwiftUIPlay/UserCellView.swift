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
                .padding()
                .scaleEffect(1.2)
            VStack(alignment: .leading, spacing: 0, content: {
                Text(user.name)
                    .font(.system(size: 32, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                Text(user.status)
                    .font(.system(size: 18, weight: .light, design: .rounded))
            }).padding()
            Spacer()
            Button(action: {
                print("Edit button was tapped")
            }) {
                Image(systemName: "paperplane")
                    .font(.system(size: 30, weight: .light))
            }.padding()
        })
        .frame(height: 80)
        .background(Color.init(UIColor.lightGray))
        .border(Color.white, width: 2)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        let user = Datasource.load().first
        UserCellView(user: user!)
            .background(Color.red)
    }
}
