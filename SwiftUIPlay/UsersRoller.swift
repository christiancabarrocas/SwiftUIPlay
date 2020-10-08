//
//  UsersRoller.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI

struct UsersRoller: View {

    let users = Datasource.load()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 10, content: {
                ForEach(users, id: \.self) { user in
                    UserRollerView(user: user)
                }
            })
        })
        .background(Color.init(.white).opacity(0.5))
    }
}

struct UsersRoller_Previews: PreviewProvider {
    static var previews: some View {
        UsersRoller()
            .background(Color.red)
    }
}
