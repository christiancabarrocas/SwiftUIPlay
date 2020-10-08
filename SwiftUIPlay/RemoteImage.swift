//
//  RemoteImage.swift
//  SwiftUIPlay
//
//  Created by Shootr on 08/10/2020.
//

import Foundation
import SwiftUI
import Combine

struct ImageViewContainer: View {
    @ObservedObject var remoteImageURL: RemoteImageURL

    init(imageURL: URL) {
        remoteImageURL = RemoteImageURL(imageURL: imageURL)
    }

    var body: some View {
        let defaultImage = UIImage(systemName: "person.crop.circle") ?? UIImage()
        let image = UIImage(data: remoteImageURL.data) ?? defaultImage
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 75, height: 75, alignment: .center)
            .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 10)
    }
}

class RemoteImageURL: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()

    @Published var data = Data() {
        didSet { update() }
    }

    func update() { didChange.send(data) }

    init(imageURL: URL) {
        URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async { self.data = data }
        }.resume()
    }
}

struct ImageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://c.stocksy.com/a/3UC600/z9/1477959.jpg")
        Group {
            ImageViewContainer(imageURL: url!)
        }
    }
}
