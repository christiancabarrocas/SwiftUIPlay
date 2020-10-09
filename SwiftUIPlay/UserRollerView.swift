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
            UserName(user: user)
        })
        .padding(.all, 10)
    }
}

struct UserRollerView_Previews: PreviewProvider {
    static var previews: some View {
        let user = Datasource.load().first
        UserRollerView(user: user!)
            .background(Color.red)
    }
}
