//
//  ImageSearchView.swift
//  FlickrSearch
//
//  Created by Amit Nalawade on 2/13/24.
//

import SwiftUI

struct ImageSearchView: View {
    @State var searchInput = ""
    @ObservedObject var imageSearchViewModel: ImageSearchViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 5) {
                    ForEach(imageSearchViewModel.images, id: \.id) { imageModel in
                        NavigationLink {
                            ImageDetailView(imageModel: imageModel)
                        } label: {
                            ImageContainerView(url: imageModel.url)
                                .frame(width: 100, height: 100)
                        }
                    }
                }
                .accessibilityLabel("Container for images")
                .padding()
                .searchable(text: $searchInput, prompt: "Start typing to search")
                .onChange(of: searchInput) { newValue in
                    Task {
                        try? await imageSearchViewModel.search(for: newValue)
                    }
                }
            }
            .navigationTitle("ImageSearch")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ImageSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSearchView(imageSearchViewModel: ImageSearchViewModel())
    }
}
