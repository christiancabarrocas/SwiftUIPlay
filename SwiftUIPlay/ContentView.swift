//
//  ContentView.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import SwiftUI

struct ContentView: View {

    let users = Datasource.load()

    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Spacer()
                .frame(height: 50)
            CustomTitle(text: "Suggested users")
            UsersRoller()
            Spacer()
                .frame(height: 30)
            CustomTitle(text: "Friends")
            UsersList()
        })

        .background(Color.init(.lightGray))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
