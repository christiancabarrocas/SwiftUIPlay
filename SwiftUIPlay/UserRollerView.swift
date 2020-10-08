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
                .frame(width: 75, height: 75, alignment: .center)
            Text(user.name)
                .bold()
                .font(.system(size: 18, weight: .light, design: .rounded))
                .foregroundColor(.white)
        })
        .padding(.all, 15)
    }
}

struct UserRollerView_Previews: PreviewProvider {
    static var previews: some View {
        let user = Datasource.load().first
        UserRollerView(user: user!)
            .background(Color.red)
    }
}
