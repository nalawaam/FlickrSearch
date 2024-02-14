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
                
                Text("Title -")
                    .accessibilityLabel("Image title header in detail view")
                    .font(.callout)
                    .padding(.leading)
                Text(imageModel.title)
                    .accessibilityLabel("Image title in detail view")
                    .font(.callout)
                    .padding()
                
                Text("Description -")
                    .accessibilityLabel("Image description header in detail view")
                    .font(.callout)
                    .padding(.leading)
                Text(imageModel.description)
                    .accessibilityLabel("Image description in detail view")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .font(.callout)
                    .padding()
                
                Text("Author -")
                    .accessibilityLabel("Image author header in detail view")
                    .font(.callout)
                    .padding(.leading)
                Text(imageModel.author)
                    .accessibilityLabel("Image author in detail view")
                    .font(.callout)
                    .padding()
                
                Text("Published date -")
                    .accessibilityLabel("Image published date header in detail view")
                    .font(.callout)
                    .padding(.leading)
                Text(imageModel.formattedPublishedDate)
                    .accessibilityLabel("Image published date in detail view")
                    .font(.callout)
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
                dateTaken: "",
                description: "formatted description",
                published: "2024-02-11T20:26:59Z",
                author: "nobody@flickr.com (\"antonfalco2\")",
                authorId: "",
                tags: ""
            )
        )
    }
}
