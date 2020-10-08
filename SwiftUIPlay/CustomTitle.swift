//
//  CustomTitle.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI

struct CustomTitle: View {

    var text: String

    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 36, weight: .semibold, design: .rounded))
            .foregroundColor(.white)
    }
}
