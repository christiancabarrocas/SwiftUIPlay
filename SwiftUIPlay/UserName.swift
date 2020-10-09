//
//  UserName.swift
//  SwiftUIPlay
//
//  Created by Shootr on 09/10/2020.
//

import Foundation
import SwiftUI

struct UserName: View {

    var user: User
    
    var body: some View {
        Text(user.name)
            .bold()
            .font(.system(size: 18, weight: .light, design: .rounded))
            .foregroundColor(.white)
            .shadow(radius: 3, x: 0, y: 5)
    }
}
