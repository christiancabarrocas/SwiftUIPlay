//
//  Datasource.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation

final class Datasource {

    static func load() -> [User] {
        return [
            User(name: "Gloria", url: URL(string: "https://c.stocksy.com/a/3UC600/z9/1477959.jpg") ?? nil),
            User(name: "Eugenio", url: URL(string: "http://www.machovibes.com/wp-content/uploads/2018/07/40-Best-Portrait-Photography-Poses-for-Men-22.jpg")),
            User(name: "Patricia", url: URL(string: "https://c.stocksy.com/a/0SZ100/z9/374604.jpg")),
            User(name: "Sara", url: URL(string: "https://c.stocksy.com/a/onx900/z9/2374836.jpg")),
            User(name: "Manolo", url: URL(string: "http://www.machovibes.com/wp-content/uploads/2018/07/40-Best-Portrait-Photography-Poses-for-Men-21.jpg"))
        ]
    }
}
