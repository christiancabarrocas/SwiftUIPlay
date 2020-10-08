//
//  UserRollerView.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI

struct UserRollerView: View {
    var user: User
    var body: some View {
        VStack(alignment: .center, spacing: 5, content: {

            ImageViewContainer(imageURL: user.url)

            Text(user.name)
                .bold()
                .font(.system(size: 18, weight: .light, design: .rounded))
                .foregroundColor(.white)
        })
        .padding(.all, 15)
    }
}
