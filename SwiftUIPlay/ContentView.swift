//
//  ContentView.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import SwiftUI

struct UserView: View {
    var user: User
    var body: some View {
        VStack(alignment: .center, spacing: 5, content: {

            ImageViewContainer(imageURL: user.url)
                
            Text(user.name)
                .bold()
                .font(.system(size: 18, weight: .light, design: .default))
                .foregroundColor(.white)
        })
        .padding(.all, 15)
    }
}

struct ContentView: View {

    let users = Datasource.load()

    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Text("Suggested users")
                .padding()
                .font(.system(size: 24, weight: .semibold, design: .rounded))
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .center, spacing: 10, content: {
                    ForEach(users, id: \.self) { user in
                        UserView(user: user)
                    }
                })
            })
            .background(Color.gray)
            Spacer()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
