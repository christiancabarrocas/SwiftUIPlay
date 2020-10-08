//
//  User.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation

struct User: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let url: URL!
    let status: String
}
