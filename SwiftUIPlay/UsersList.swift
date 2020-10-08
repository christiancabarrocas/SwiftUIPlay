//
//  UsersList.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI

struct UsersList: View {

    let users = Datasource.load()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .leading, spacing: 0, content: {
                ForEach(users, id: \.self) { user in
                    UserView(user: user)
                }
            })
        })
    }
}
