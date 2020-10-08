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
        List {
            Section {
                ForEach(users) { user in
                    UserCellView(user: user)
                    Spacer().frame(height: 1)
                }
            }
        }
    }
}

struct UsersList_Previews: PreviewProvider {
    static var previews: some View {
        UsersList()
    }
}
