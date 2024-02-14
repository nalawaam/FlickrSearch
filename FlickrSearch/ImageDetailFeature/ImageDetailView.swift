//
//  ImageDetailView.swift
//  FlickrSearch
//
//  Created by Amit Nalawade on 2/13/24.
//

import SwiftUI

struct ImageDetailView: View {
    let imageModel: ImageModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
                ImageContainerView(url: imageModel.url)
                    .accessibilityLabel("Image container in detail view")
                    .padding()
                Text(imageModel.title)
                    .accessibilityLabel("Image title in detail view")
                    .font(.title)
                    .padding()
                Text(imageModel.description)
                    .accessibilityLabel("Image description in detail view")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .font(.headline)
                    .padding()
                Text(imageModel.author)
                    .accessibilityLabel("Image author in detail view")
                    .font(.headline)
                    .padding()
                Text(imageModel.formattedPublishedDate)
                    .accessibilityLabel("Image published date in detail view")
                    .font(.headline)
                    .padding()
            }
            .navigationTitle("Image Detail")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(
            imageModel: ImageModel(
                title: "Short Eared Owl",
                link: "",
                media: ["m": "https://live.staticflickr.com//65535//53524670420_b6f8a08185_m.jpg"],
                date_taken: "",
                description: "formatted description",
                published: "2024-02-11T20:26:59Z",
                author: "nobody@flickr.com (\"antonfalco2\")",
                author_id: "",
                tags: ""
            )
        )
    }
}
